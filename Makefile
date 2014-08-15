# Makefile for leanpub / dropbox

BOOK = Book.txt
PREVIEW = Subset.txt
SAMPLE = Sample.txt

DROPBOXDIR = manuscript

DROPBOXFILES = $(DROPBOXDIR)/$(BOOK) \
               $(DROPBOXDIR)/$(PREVIEW) \
               $(DROPBOXDIR)/$(SAMPLE) \
               $(DROPBOXDIR)/preface.md \
               $(DROPBOXDIR)/ch01.md \
               $(DROPBOXDIR)/ch01-entscheidungsbaum.md \
               $(DROPBOXDIR)/ch01-use-methode.md \
               $(DROPBOXDIR)/ch01-bisektion.md \
               $(DROPBOXDIR)/ch01-korrelation.md \
               $(DROPBOXDIR)/ch01-abkuerzungen.md \
               $(DROPBOXDIR)/ch01-anti-methoden.md \
               $(DROPBOXDIR)/ch02.md \
               $(DROPBOXDIR)/ch02-problemaufnahme.md \
               $(DROPBOXDIR)/ch02-selber-denken.md \
               $(DROPBOXDIR)/ch02-logs.md \
               $(DROPBOXDIR)/ch02-fragen.md \
               $(DROPBOXDIR)/ch02-laborbuch.md \
               $(DROPBOXDIR)/ch02-hilfsaufgabe.md \
               $(DROPBOXDIR)/ch02-feststecken.md \
               $(DROPBOXDIR)/ch03.md \
               $(DROPBOXDIR)/ch03-kontrolle.md \
               $(DROPBOXDIR)/ch03-vertiefung.md \
               $(DROPBOXDIR)/ch03-verallgemeinern.md \
               $(DROPBOXDIR)/ch03-verhindern.md \
               $(DROPBOXDIR)/ch03-schulung.md \
               $(DROPBOXDIR)/ch03-detail-gesamt.md \
               $(DROPBOXDIR)/ch04.md \
               $(DROPBOXDIR)/ch04-dateien.md \
               $(DROPBOXDIR)/ch04-prozessmodell.md \
               $(DROPBOXDIR)/ch04-schnittstellen.md \
               $(DROPBOXDIR)/ch05.md \
               $(DROPBOXDIR)/ch05-bootprobleme.md \
               $(DROPBOXDIR)/ch05-vm.md \
               $(DROPBOXDIR)/ch05-initramfs.md \
               $(DROPBOXDIR)/ch05-magic-sysrequest.md \
               $(DROPBOXDIR)/ch05-kernel-panic.md \
               $(DROPBOXDIR)/ch06.md \
               $(DROPBOXDIR)/ch06-erste-minute.md \
               $(DROPBOXDIR)/ch06-init-programme.md \
               $(DROPBOXDIR)/ch06-dienste.md \
               $(DROPBOXDIR)/ch06-zugriffsrechte.md \
               $(DROPBOXDIR)/ch06-mount-probleme.md \
               $(DROPBOXDIR)/ch06-sonstige.md \
               $(DROPBOXDIR)/ch07.md \
               $(DROPBOXDIR)/ch07-cpu.md \
               $(DROPBOXDIR)/ch07-ram.md \
               $(DROPBOXDIR)/ch07-io.md \
               $(DROPBOXDIR)/ch08.md \
               $(DROPBOXDIR)/ch08-acct.md \
               $(DROPBOXDIR)/ch08-bonnie.md \
               $(DROPBOXDIR)/ch08-busybox.md \
               $(DROPBOXDIR)/ch08-c.md \
               $(DROPBOXDIR)/ch08-dd.md \
               $(DROPBOXDIR)/ch08-fio.md \
               $(DROPBOXDIR)/ch08-fuser.md \
               $(DROPBOXDIR)/ch08-gdb.md \
               $(DROPBOXDIR)/ch08-hdparm.md \
               $(DROPBOXDIR)/ch08-lsof.md \
               $(DROPBOXDIR)/ch08-ltrace.md \
               $(DROPBOXDIR)/ch08-netstat.md \
               $(DROPBOXDIR)/ch08-perf.md \
               $(DROPBOXDIR)/ch08-perl.md \
               $(DROPBOXDIR)/ch08-shell.md \
               $(DROPBOXDIR)/ch08-strace.md \
               $(DROPBOXDIR)/ch08-sysstat.md \
               $(DROPBOXDIR)/ch08-vmstat.md \
               $(DROPBOXDIR)/ch09.md \
               $(DROPBOXDIR)/ch09-osi-modell.md \
               $(DROPBOXDIR)/ch09-arp.md \
               $(DROPBOXDIR)/ch09-ipv4-netzmasken.md \
               $(DROPBOXDIR)/ch09-adressierung.md \
               $(DROPBOXDIR)/ch09-zustaende-tcp.md \
               $(DROPBOXDIR)/ch09-path-mtu.md \
               $(DROPBOXDIR)/ch09-routing-algorithm.md \
               $(DROPBOXDIR)/ch10.md \
               $(DROPBOXDIR)/ch10-netzausfall-rechner.md \
               $(DROPBOXDIR)/ch10-netzausfall-segment.md \
               $(DROPBOXDIR)/ch10-routing.md \
               $(DROPBOXDIR)/ch11.md \
               $(DROPBOXDIR)/ch11-ausfall-essentiell.md \
               $(DROPBOXDIR)/ch11-ausfall-dienst.md \
               $(DROPBOXDIR)/ch11-sonstiges.md \
               $(DROPBOXDIR)/ch12.md \
               $(DROPBOXDIR)/ch12-ursachen.md \
               $(DROPBOXDIR)/ch12-messen.md \
               $(DROPBOXDIR)/ch12-massnahmen.md \
               $(DROPBOXDIR)/ch13.md \
               $(DROPBOXDIR)/ch13-arp.md \
               $(DROPBOXDIR)/ch13-bridge-utils.md \
               $(DROPBOXDIR)/ch13-ethtool.md \
               $(DROPBOXDIR)/ch13-ifconfig.md \
               $(DROPBOXDIR)/ch13-iperf.md \
               $(DROPBOXDIR)/ch13-iproute.md \
               $(DROPBOXDIR)/ch13-libtrace.md \
               $(DROPBOXDIR)/ch13-netcat.md \
               $(DROPBOXDIR)/ch13-netstat.md \
               $(DROPBOXDIR)/ch13-openssl.md \
               $(DROPBOXDIR)/cha-13-perl.md \
               $(DROPBOXDIR)/cha-13-ping.md \
               $(DROPBOXDIR)/cha-13-quagga.md \
               $(DROPBOXDIR)/cha-13-route.md \
               $(DROPBOXDIR)/cha-13-samba.md \
               $(DROPBOXDIR)/cha-13-tcpdump.md \
               $(DROPBOXDIR)/cha-13-telnet.md \
               $(DROPBOXDIR)/cha-13-traceroute.md \
               $(DROPBOXDIR)/cha-13-wireshark.md \
               $(DROPBOXDIR)/glossar.md \
               $(DROPBOXDIR)/literatur.md \
               $(DROPBOXDIR)/part1.md \
               $(DROPBOXDIR)/part2.md \
               $(DROPBOXDIR)/part3.md \
               $(DROPBOXDIR)/anhang.md \
               $(DROPBOXDIR)/kolophon.md \
               $(DROPBOXDIR)/revision.md \
	       $(DROPBOXDIR)/code/fnotify.c \
	       $(DROPBOXDIR)/code/http-injector.pl \
	       $(DROPBOXDIR)/code/read-syslog.pl \
	       $(DROPBOXDIR)/code/strace-invocator.sh \
               $(DROPBOXDIR)/images/ch10-entfernte-routen.png \
               $(DROPBOXDIR)/images/ch10-neue-routen.png \
               $(DROPBOXDIR)/images/ch12-ping-Mdo-s1464.png \
               $(DROPBOXDIR)/images/ch12-ping-Mdo-s1472.png \
               $(DROPBOXDIR)/images/ch13-arp-ping.png \
               $(DROPBOXDIR)/images/eb-allgemein-drakon.png \
               $(DROPBOXDIR)/images/eb-allgemein.png \
               $(DROPBOXDIR)/images/eb-allgemein-3-yed.png \
               $(DROPBOXDIR)/images/eb-netz-totalausfall-rechner.png \
               $(DROPBOXDIR)/images/router-graph.png \
               $(DROPBOXDIR)/images/ss13-libtrace-1.png \
               $(DROPBOXDIR)/images/ss13-netcat-1.png \
               $(DROPBOXDIR)/images/ss13-openssl-1.png \
               $(DROPBOXDIR)/images/tcp-handshake-fail.png \
               $(DROPBOXDIR)/images/tcp-handshake.png \
               $(DROPBOXDIR)/images/tcp-shutdown.png \
               $(DROPBOXDIR)/images/title_page.png \
               $(DROPBOXDIR)/images/top-sorted-by-mem.png \
#

SOURCES = $(BOOK) \
          $(PREVIEW) \
          $(SAMPLE) \
          preface.md \
          ch01.md \
          ch01-entscheidungsbaum.md \
          ch01-use-methode.md \
          ch01-bisektion.md \
          ch01-korrelation.md \
          ch01-abkuerzungen.md \
          ch01-anti-methoden.md \
          ch02.md \
          ch02-problemaufnahme.md \
          ch02-selber-denken.md \
          ch02-logs.md \
          ch02-fragen.md \
          ch02-laborbuch.md \
          ch02-hilfsaufgabe.md \
          ch02-feststecken.md \
          ch03.md \
          ch03-kontrolle.md \
          ch03-vertiefung.md \
          ch03-verallgemeinern.md \
          ch03-verhindern.md \
          ch03-schulung.md \
          ch03-detail-gesamt.md \
          ch04.md \
          ch04-dateien.md \
          ch04-prozessmodell.md \
          ch04-schnittstellen.md \
          ch05.md \
          ch05-bootprobleme.md \
          ch05-vm.md \
          ch05-initramfs.md \
          ch05-magic-sysrequest.md \
          ch05-kernel-panic.md \
          ch06.md \
          ch06-erste-minute.md \
          ch06-init-programme.md \
          ch06-dienste.md \
          ch06-zugriffsrechte.md \
          ch06-mount-probleme.md \
          ch06-sonstige.md \
          ch07.md \
          ch07-cpu.md \
          ch07-ram.md \
          ch07-io.md \
          ch08.md \
          ch08-acct.md \
          ch08-bonnie.md \
          ch08-busybox.md \
          ch08-c.md \
          ch08-dd.md \
          ch08-fio.md \
          ch08-fuser.md \
          ch08-gdb.md \
          ch08-hdparm.md \
          ch08-lsof.md \
          ch08-ltrace.md \
          ch08-netstat.md \
          ch08-perf.md \
          ch08-perl.md \
          ch08-shell.md \
          ch08-strace.md \
          ch08-sysstat.md \
          ch08-vmstat.md \
          ch09.md \
          ch09-osi-modell.md \
          ch09-arp.md \
          ch09-ipv4-netzmasken.md \
          ch09-adressierung.md \
          ch09-zustaende-tcp.md \
          ch09-path-mtu.md \
          ch09-routing-algorithm.md \
          ch10.md \
          ch10-netzausfall-rechner.md \
          ch10-netzausfall-segment.md \
          ch10-routing.md \
          ch11.md \
          ch11-ausfall-essentiell.md \
          ch11-ausfall-dienst.md \
          ch11-sonstiges.md \
          ch12.md \
          ch12-ursachen.md \
          ch12-messen.md \
          ch12-massnahmen.md \
          ch13.md \
          ch13-arp.md \
          ch13-bridge-utils.md \
          ch13-ethtool.md \
          ch13-ifconfig.md \
          ch13-iperf.md \
          ch13-iproute.md \
          ch13-libtrace.md \
          ch13-netcat.md \
          ch13-netstat.md \
          ch13-openssl.md \
          cha-13-perl.md \
          cha-13-ping.md \
          cha-13-quagga.md \
          cha-13-route.md \
          cha-13-samba.md \
          cha-13-tcpdump.md \
          cha-13-telnet.md \
          cha-13-traceroute.md \
          cha-13-wireshark.md \
          glossar.md \
          literatur.md \
          part1.md \
          part2.md \
          part3.md \
          anhang.md \
	  code/fnotify.c \
	  code/http-injector.pl \
	  code/read-syslog.pl \
	  code/strace-invocator.sh \
          images/ch10-entfernte-routen.png \
          images/ch10-neue-routen.png \
          images/ch12-ping-Mdo-s1464.png \
          images/ch12-ping-Mdo-s1472.png \
          images/ch13-arp-ping.png \
          images/eb-allgemein-drakon.png \
          images/eb-allgemein.png \
          images/eb-allgemein-3-yed.png \
          images/eb-netz-totalausfall-rechner.png \
          images/router-graph.png \
          images/ss13-libtrace-1.png \
          images/ss13-netcat-1.png \
          images/ss13-openssl-1.png \
          images/tcp-handshake-fail.png \
          images/tcp-handshake.png \
          images/tcp-shutdown.png \
#
CHAPTERS = \
    preface.md \
    ch01.md \
    ch01-entscheidungsbaum.md \
    ch01-use-methode.md \
    ch01-bisektion.md \
    ch01-korrelation.md \
    ch01-abkuerzungen.md \
    ch01-anti-methoden.md \
    ch02.md \
    ch02-problemaufnahme.md \
    ch02-selber-denken.md \
    ch02-logs.md \
    ch02-fragen.md \
    ch02-laborbuch.md \
    ch02-hilfsaufgabe.md \
    ch02-feststecken.md \
    ch03.md \
    ch03-kontrolle.md \
    ch03-vertiefung.md \
    ch03-verhindern.md \
    ch03-verallgemeinern.md \
    ch03-schulung.md \
    ch03-detail-gesamt.md \
    ch04.md \
    ch04-dateien.md \
    ch04-prozessmodell.md \
    ch04-schnittstellen.md \
    ch05.md \
    ch05-bootprobleme.md \
    ch05-vm.md \
    ch05-initramfs.md \
    ch05-magic-sysrequest.md \
    ch05-kernel-panic.md \
    ch06.md \
    ch06-erste-minute.md \
    ch06-init-programme.md \
    ch06-dienste.md \
    ch06-zugriffsrechte.md \
    ch06-mount-probleme.md \
    ch06-sonstige.md \
    ch07.md \
    ch07-cpu.md \
    ch07-ram.md \
    ch07-io.md \
    ch08.md \
    ch08-acct.md \
    ch08-bonnie.md \
    ch08-busybox.md \
    ch08-c.md \
    ch08-dd.md \
    ch08-fio.md \
    ch08-fuser.md \
    ch08-gdb.md \
    ch08-hdparm.md \
    ch08-lsof.md \
    ch08-ltrace.md \
    ch08-netstat.md \
    ch08-perf.md \
    ch08-perl.md \
    ch08-shell.md \
    ch08-strace.md \
    ch08-sysstat.md \
    ch08-vmstat.md \
    ch09.md \
    ch09-osi-modell.md \
    ch09-arp.md \
    ch09-ipv4-netzmasken.md \
    ch09-adressierung.md \
    ch09-zustaende-tcp.md \
    ch09-path-mtu.md \
    ch09-routing-algorithm.md \
    ch10.md \
    ch10-netzausfall-rechner.md \
    ch10-netzausfall-segment.md \
    ch10-routing.md \
    ch11.md \
    ch11-ausfall-essentiell.md \
    ch11-ausfall-dienst.md \
    ch11-sonstiges.md \
    ch12.md \
    ch12-ursachen.md \
    ch12-messen.md \
    ch12-massnahmen.md \
    ch13.md \
    ch13-arp.md \
    ch13-bridge-utils.md \
    ch13-ethtool.md \
    ch13-ifconfig.md \
    ch13-iperf.md \
    ch13-iproute.md \
    ch13-libtrace.md \
    ch13-netcat.md \
    ch13-netstat.md \
    ch13-openssl.md \
    cha-13-perl.md \
    cha-13-ping.md \
    cha-13-quagga.md \
    cha-13-route.md \
    cha-13-samba.md \
    cha-13-tcpdump.md \
    cha-13-telnet.md \
    cha-13-traceroute.md \
    cha-13-wireshark.md \
    glossar.md \
    literatur.md \
    kolophon.md \
#
IMAGES = \
    images/eb-allgemein.png \
#
.PHONY: proofreading revision.md

$(DROPBOXDIR)/%.md: %.md
	cp $< $@

$(DROPBOXDIR)/%-empty.md: %.md
	grep '^#' $< | grep -v '^###' | sed -e 's/^/\n/' > $@

$(DROPBOXDIR)/%.txt: %.txt
	cp $< $@

$(DROPBOXDIR)/code/%: code/% $(DROPBOXDIR)/code
	cp $< $@

$(DROPBOXDIR)/code: $(DROPBOXDIR)
	mkdir -p $(DROPBOXDIR)/code

$(DROPBOXDIR)/images/%.jpg: images/%.jpg
	cp $< $@

$(DROPBOXDIR)/images/%.png: images/%.png
	cp $< $@

revision.md: $(SOURCES) $(IMAGES) Makefile lua/revision.lua
	mtn --rcfile lua/revision.lua revision > .revision.md
	cmp --quiet .revision.md $@ || mv .revision.md $@
all:

dropbox: $(DROPBOXFILES)

partial: dropbox revision.md
	sleep 15 && leanpub partial_preview

preview: dropbox revision.md
	sleep 15 && leanpub preview

proofreading:
	bin/make_proofreading_file

status:
	leanpub job_status

clean:
	rm -f revision.md
# end of Makefile
