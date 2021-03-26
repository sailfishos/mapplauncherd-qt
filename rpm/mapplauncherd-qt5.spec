%bcond_with reinit_logging
Name:       mapplauncherd-qt5
Summary:    Application launch boosters for Qt5
Version:    1.0.0
Release:    1
License:    LGPLv2+
URL:        https://github.com/nemomobile/mapplauncherd-qt/
Source0:    %{name}-%{version}.tar.bz2
Requires:   mapplauncherd >= 4.1.0
Requires:   systemd-user-session-targets
Requires(post): /sbin/ldconfig
Requires(post): /usr/sbin/setcap
Requires(postun): /sbin/ldconfig
Requires(pre):  sailfish-setup
BuildRequires:  pkgconfig(libshadowutils)
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Gui)
BuildRequires:  pkgconfig(Qt5Concurrent)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  pkgconfig(Qt5DBus)
BuildRequires:  pkgconfig(Qt5Network)
BuildRequires:  pkgconfig(Qt5Sql)
BuildRequires:  pkgconfig(Qt5Xml)
BuildRequires:  pkgconfig(glib-2.0)
BuildRequires:  pkgconfig(sqlite3)
BuildRequires:  pkgconfig(libffi)
BuildRequires:  pkgconfig(libxml-2.0)
BuildRequires:  mapplauncherd-devel >= 4.1.0
BuildRequires:  systemd

%description
%{summary}.


%package devel
Summary:    Development files for launchable applications
Requires:   %{name} = %{version}-%{release}

%description devel
Development files for creating applications that can be launched
using mapplauncherd.


%prep
%setup -q -n %{name}-%{version}

%build
unset LD_AS_NEEDED
%qmake5 VERSION=`echo %{version} | sed 's/+.*//'` \
    %{?with_reinit_logging:"DEFINES+=REINIT_LOGGING"}
make %{?_smp_mflags}

%install
rm -rf %{buildroot}
%qmake5_install

mkdir -p %{buildroot}%{_userunitdir}/user-session.target.wants
ln -s ../booster-qt5.service %{buildroot}%{_userunitdir}/user-session.target.wants/

%post
/sbin/ldconfig
/usr/sbin/setcap cap_sys_ptrace+pe %{_libexecdir}/mapplauncherd/booster-qt5 || :

%postun -p /sbin/ldconfig

%files
%defattr(-,root,root,-)
%attr(2755, root, privileged) %{_libexecdir}/mapplauncherd/booster-qt5
%{_libdir}/libmdeclarativecache5.so.*
%{_userunitdir}/booster-qt5.service
%{_userunitdir}/user-session.target.wants/booster-qt5.service
%{_userunitdir}/booster-qt5-signal.service

%files devel
%defattr(-,root,root,-)
%{_datadir}/qt5/mkspecs/features/*.prf
%{_libdir}/pkgconfig/*.pc
%{_libdir}/libmdeclarativecache5.so
%{_includedir}/mdeclarativecache5/
