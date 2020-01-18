// cookie.go
package main

import (
	"fmt"
	"github.com/xiangyu123/golang-demo/pkg/package1"
	"github.com/xiangyu123/golang-demo/pkg/package2"
)

func main() {
	// Snippe
	pkg1_int := package1.Getint()
	pkg2_bool := package2.Getbool()
	fmt.Println("cookie ")
	fmt.Println("pkg1_int is: ", pkg1_int)
	fmt.Println("pkg2_bool is: ", pkg2_bool)
}
