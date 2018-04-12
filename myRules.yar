import "pe"
import "math"

rule static_analysis{
	meta:
		author = "Raghu Pusapati"
		description = "Static analysis with Yara"
	strings:
		$v = "VVhU"
		$ad = "t&:a"
		$af = "QQSVWd"
		$ap = "j@j "
		$ba = "Hu4j"
		$br = "t$$P"

	condition:
		uint16(0) == 0x5A4D and (1 of them) and pe.imports("kernel32.dll") and pe.imports("advapi32.dll")
}
