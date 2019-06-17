module github.com/flant/werf

require (
	cloud.google.com/go v0.34.0
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78
	github.com/Azure/go-autorest v11.1.0+incompatible
	github.com/BurntSushi/toml v0.3.1
	github.com/MakeNowJust/heredoc v0.0.0-20170808103936-bb23615498cd
	github.com/Masterminds/goutils v1.1.0
	github.com/Masterminds/semver v1.3.1
	github.com/Masterminds/sprig v0.0.0-20190301161902-9f8fceff796f
	github.com/Masterminds/vcs v1.11.1
	github.com/Microsoft/go-winio v0.4.12
	github.com/Microsoft/hcsshim v0.8.5
	github.com/Nvveen/Gotty v0.0.0-20120604004816-cd527374f1e5
	github.com/PuerkitoBio/purell v1.1.0
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578
	github.com/agl/ed25519 v0.0.0-20170116200512-5312a6153412
	github.com/apache/thrift v0.0.0-20161221203622-b2a4d4ae21c7
	github.com/asaskevich/govalidator v0.0.0-20160518190739-766470278477
	github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973
	github.com/bmatcuk/doublestar v1.1.1
	github.com/boltdb/bolt v0.0.0-20170131192018-e9cf4fae01b5
	github.com/chai2010/gettext-go v0.0.0-20160711120539-c6fed771bfd5
	github.com/codahale/hdrhistogram v0.0.0-20160425231609-f8ad88b59a58
	github.com/containerd/console v0.0.0-20181022165439-0650fd9eeb50
	github.com/containerd/containerd v1.3.0-0.20190212172151-f5b0fa220df8
	github.com/containerd/continuity v0.0.0-20181203112020-004b46473808
	github.com/containerd/fifo v0.0.0-20180307165137-3d5202aec260
	github.com/containerd/go-runc v0.0.0-20180907222934-5a6d9f37cfa3
	github.com/containerd/typeurl v0.0.0-20180627222232-a93fcdb778cd
	github.com/coreos/etcd v3.2.1+incompatible
	github.com/cpuguy83/go-md2man v1.0.8
	github.com/cyphar/filepath-securejoin v0.2.2
	github.com/davecgh/go-spew v1.1.1
	github.com/dgrijalva/jwt-go v0.0.0-20160705203006-01aeca54ebda
	github.com/docker/cli v0.0.0-20190321234815-f40f9c240ab0
	github.com/docker/compose-on-kubernetes v0.4.21 // indirect
	github.com/docker/distribution v2.7.1-0.20190205005809-0d3efadf0154+incompatible
	github.com/docker/docker v1.14.0-0.20190319215453-e7b5f7dbe98c
	github.com/docker/docker-credential-helpers v0.6.1
	github.com/docker/go v1.5.1-1
	github.com/docker/go-connections v0.4.0
	github.com/docker/go-events v0.0.0-20170721190031-9461782956ad
	github.com/docker/go-metrics v0.0.0-20181218153428-b84716841b82
	github.com/docker/go-units v0.3.3
	github.com/docker/libnetwork v0.0.0-20180913200009-36d3bed0e9f4
	github.com/docker/libtrust v0.0.0-20160708172513-aabc10ec26b7 // indirect
	github.com/docker/licensing v0.0.0-20190320170819-9781369abdb5 // indirect
	github.com/docker/spdystream v0.0.0-20160310174837-449fdfce4d96
	github.com/docker/swarmkit v0.0.0-20180705210007-199cf49cd996
	github.com/emicklei/go-restful v0.0.0-20170410110728-ff4f55a20633
	github.com/emicklei/go-restful-swagger12 v0.0.0-20170208215640-dcef7f557305
	github.com/emirpasic/gods v1.12.0 // indirect
	github.com/evanphx/json-patch v0.0.0-20190203023257-5858425f7550
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d
	github.com/fatih/camelcase v0.0.0-20160318181535-f6a740d52f96
	github.com/fatih/color v1.7.0
	github.com/flant/go-containerregistry v0.0.0-20190603132110-751ebe52f174
	github.com/flant/kubedog v0.2.1-0.20190610141209-2381e647eb44
	github.com/flant/logboek v0.2.0
	github.com/flant/logboek_py v0.0.0-20190418220715-388556f27301
	github.com/flynn-archive/go-shlex v0.0.0-20150515145356-3f9db97f8568
	github.com/ghodss/yaml v1.0.0
	github.com/gliderlabs/ssh v0.1.4 // indirect
	github.com/go-openapi/jsonpointer v0.19.0
	github.com/go-openapi/jsonreference v0.19.0
	github.com/go-openapi/spec v0.17.2
	github.com/go-openapi/swag v0.17.2
	github.com/gobwas/glob v0.2.3
	github.com/gogo/googleapis v1.0.0
	github.com/gogo/protobuf v1.2.1
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/groupcache v0.0.0-20160516000752-02826c3e7903
	github.com/golang/protobuf v1.3.1
	github.com/google/btree v1.0.0
	github.com/google/go-cmp v0.3.0
	github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf
	github.com/google/shlex v0.0.0-20150127133951-6f45313302b9
	github.com/google/uuid v1.0.0
	github.com/googleapis/gnostic v0.2.0
	github.com/gophercloud/gophercloud v0.0.0-20190126172459-c818fa66e4c8
	github.com/gorilla/context v0.0.0-20160226214623-1ea25387ff6f
	github.com/gorilla/mux v1.7.1
	github.com/gosuri/uitable v0.0.0-20160404203958-36ee7e946282
	github.com/gregjones/httpcache v0.0.0-20190212212710-3befbb6ad0cc
	github.com/grpc-ecosystem/go-grpc-prometheus v0.0.0-20170616101206-0c1b191dbfe5
	github.com/grpc-ecosystem/grpc-gateway v0.0.0-20170714172803-1a03ca3bad1e
	github.com/grpc-ecosystem/grpc-opentracing v0.0.0-20180507213350-8e809c8a8645
	github.com/hashicorp/go-version v1.1.0
	github.com/hashicorp/golang-lru v0.5.1
	github.com/howeyc/gopass v0.0.0-20160826175423-3ca23474a7c7
	github.com/huandu/xstrings v1.2.0
	github.com/imdario/mergo v0.3.7
	github.com/inconshreveable/mousetrap v1.0.0
	github.com/jaguilar/vt100 v0.0.0-20150826170717-2703a27b14ea
	github.com/json-iterator/go v1.1.6
	github.com/juju/ratelimit v0.0.0-20170523012141-5b9ff8664717
	github.com/kr/pty v1.1.4 // indirect
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de
	github.com/mailru/easyjson v0.0.0-20180823135443-60711f1a8329
	github.com/mattn/go-runewidth v0.0.1
	github.com/mattn/go-shellwords v1.0.5
	github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/miekg/pkcs11 v0.0.0-20180208123018-5f6e0d0dad6f
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/go-wordwrap v0.0.0-20150314170334-ad45545899c7
	github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452
	github.com/mitchellh/mapstructure v1.1.2
	github.com/moby/buildkit v0.4.0
	github.com/moby/moby v0.7.3-0.20190411110308-fc52433fa677
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.1
	github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c
	github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/opencontainers/image-spec v1.0.1
	github.com/opencontainers/runc v1.0.1-0.20190307181833-2b18fe1d885e
	github.com/opencontainers/runtime-spec v1.0.1
	github.com/opentracing-contrib/go-stdlib v0.0.0-20171029140428-b1a47cfbdd75
	github.com/opentracing/opentracing-go v0.0.0-20171003133519-1361b9cd60be
	github.com/otiai10/copy v1.0.1
	github.com/peterbourgon/diskv v2.0.1+incompatible
	github.com/pkg/errors v0.8.1
	github.com/pkg/profile v1.2.1
	github.com/pmezard/go-difflib v1.0.0
	github.com/prometheus/client_golang v0.9.1
	github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910
	github.com/prometheus/common v0.2.0
	github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d
	github.com/russross/blackfriday v0.0.0-20160531111224-1d6b8e9301e7
	github.com/satori/go.uuid v1.2.0
	github.com/seccomp/libseccomp-golang v0.0.0-20160531183505-32f571b70023
	github.com/shurcooL/sanitized_anchor_name v0.0.0-20151028001915-10ef21a441db
	github.com/sirupsen/logrus v1.3.0
	github.com/spaolacci/murmur3 v1.1.0
	github.com/spf13/cobra v0.0.3
	github.com/spf13/pflag v1.0.3
	github.com/stretchr/objx v0.2.0 // indirect
	github.com/stretchr/testify v1.3.0
	github.com/syndtr/gocapability v0.0.0-20170704070218-db04d3cc01c8
	github.com/technosophos/moniker v0.0.0-20180509230615-a5dbd03a2245
	github.com/theupdateframework/notary v0.6.1
	github.com/tonistiigi/fsutil v0.0.0-20190130224639-b4281fa67095
	github.com/tonistiigi/units v0.0.0-20180711220420-6950e57a87ea
	github.com/uber/jaeger-client-go v0.0.0-20180103221425-e02c85f9069e
	github.com/uber/jaeger-lib v1.2.1
	github.com/urfave/cli v0.0.0-20171014202726-7bc6a0acffa5
	github.com/xanzy/ssh-agent v0.2.1 // indirect
	github.com/xeipuuv/gojsonpointer v0.0.0-20180127040702-4e3ac2762d5f
	github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415
	github.com/xeipuuv/gojsonschema v0.0.0-20170512152554-8a8cc2c7e54a
	golang.org/x/crypto v0.0.0-20190530122614-20be4c3c3ed5
	golang.org/x/net v0.0.0-20190603091049-60506f45cf65
	golang.org/x/oauth2 v0.0.0-20190319182350-c85d3e98c914
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20190602015325-4c4f7f33c9ed
	golang.org/x/text v0.3.2
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	golang.org/x/tools v0.0.0-20190602112858-2de7f9bf822c // indirect
	google.golang.org/appengine v1.5.0
	google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8
	google.golang.org/grpc v1.18.0
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/ini.v1 v1.42.0
	gopkg.in/oleiade/reflections.v1 v1.0.0
	gopkg.in/square/go-jose.v2 v2.0.0-20180411045311-89060dee6a84
	gopkg.in/src-d/go-billy.v4 v4.3.0 // indirect
	gopkg.in/src-d/go-git-fixtures.v3 v3.5.0 // indirect
	gopkg.in/src-d/go-git.v4 v4.11.0
	gopkg.in/yaml.v2 v2.2.2
	gotest.tools v2.2.0+incompatible
	k8s.io/api v0.0.0-20190409092523-d687e77c8ae9
	k8s.io/apiextensions-apiserver v0.0.0-20190315093550-53c4693659ed
	k8s.io/apimachinery v0.0.0-20190409092423-760d1845f48b
	k8s.io/apiserver v0.0.0-20190313205120-8b27c41bdbb1
	k8s.io/cli-runtime v0.0.0-20190409093718-11d55751678d
	k8s.io/client-go v0.0.0-20190411052641-7a6b4715b709
	k8s.io/cloud-provider v0.0.0-20190323031113-9c9d72d1bf90
	k8s.io/helm v2.13.1+incompatible
	k8s.io/klog v0.2.0
	k8s.io/kube-openapi v0.0.0-20190228160746-b3a7cee44a30
	k8s.io/kubernetes v1.14.1
	k8s.io/utils v0.0.0-20190308190857-21c4ce38f2a7
	sigs.k8s.io/kustomize v2.0.3+incompatible
	sigs.k8s.io/yaml v1.1.0
	vbom.ml/util v0.0.0-20160121211510-db5cfe13f5cc
)

replace k8s.io/helm => github.com/flant/helm v2.8.0-rc.1.0.20190422110815-d72b277ac847+incompatible
