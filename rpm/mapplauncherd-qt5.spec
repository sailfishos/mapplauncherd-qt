# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.25
# 

Name:       mapplauncherd-qt5

# >> macros
# << macros

Summary:    Application launch boosters for Qt5
Version:    1.0.0
Release:    1
Group:      System/Daemons
License:    LGPLv2+
URL:        https://github.com/nemomobile/mapplauncherd-qt/
Source0:    %{name}-%{version}.tar.bz2
Source100:  mapplauncherd-qt5.yaml
Requires(post): /sbin/ldconfig
Requires(postun): /sbin/ldconfig
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Gui)
BuildRequires:  pkgconfig(Qt5Concurrent)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  pkgconfig(x11)
BuildRequires:  mapplauncherd-devel
Conflicts:   mapplauncherd-qt

%description
Application launch boosters for Qt5


%package devel
Summary:    Development files for launchable applications
Group:      Development/Tools
Requires:   %{name} = %{version}-%{release}

%description devel
Development files for creating applications that can be launched
using mapplauncherd.



%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre
# << build pre

%qmake 

make %{?jobs:-j%jobs}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake_install

# >> install post
# << install post


%post -p /sbin/ldconfig

%postun -p /sbin/ldconfig

%files
%defattr(-,root,root,-)
%{_libdir}/applauncherd/libbooster-qt5.so
%{_libdir}/applauncherd/libbooster-qt5-declarative.so
%{_libdir}/libmdeclarativecache5.so.*
# >> files
# << files

%files devel
%defattr(-,root,root,-)
%{_datadir}/qt5/mkspecs/features/*.prf
%{_libdir}/pkgconfig/*.pc
%{_libdir}/libmdeclarativecache5.so
%{_includedir}/mdeclarativecache5/
# >> files devel
# << files devel
