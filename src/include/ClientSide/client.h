#pragma once

#include <ConfigurationParsing/iconfiguration.h>
#include <memory>

class Client
{
public:
	Client(std::unique_ptr<IConfiguration> configuration) : configuration_(std::move(configuration)) {}
	void Configure();
private:
	std::unique_ptr<IConfiguration> configuration_;
};