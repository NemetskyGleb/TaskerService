#pragma once

#include "iconfiguration.h"
#include <string>


class Configuration : public IConfiguration
{
	Configuration(const std::string& path);

protected:
	std::string path_;
};