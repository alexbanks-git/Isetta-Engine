#pragma once
#include <string>
#include "DataStructures/Array.h"

namespace Isetta {

class SystemInfo {
public:
	static std::string GetIpAddressWithPrefix(std::string_view prefix);
	static Array<std::string> GetIPAddresses();
	static std::string GetMachineName();
	static std::string GetSystemUserName();
};

}
