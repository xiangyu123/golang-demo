package package1

import "fmt"
import "os"
import log "github.com/sirupsen/logrus"

func Getint() int {
	fmt.Println("package1.int")
	log.SetOutput(os.Stdout)
	log.SetLevel(log.InfoLevel)
	log.Warn("You should probably take a look at this.")
	return 1
}
