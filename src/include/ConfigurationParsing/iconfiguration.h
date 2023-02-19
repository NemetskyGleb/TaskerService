#pragma once

/// @brief Configuration interface
class IConfiguration
{
public:
	virtual void Configure() = 0;
	virtual void Parse() = 0;
};