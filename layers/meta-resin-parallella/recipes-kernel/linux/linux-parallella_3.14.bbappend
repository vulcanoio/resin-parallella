inherit kernel-resin

SRCREV = "7a0dc647b9b1c0010ff83fc117e29b408d5693bb"

RESIN_CONFIGS_append = " led"
RESIN_CONFIGS[led] = " \
    CONFIG_NEW_LEDS=y \
    CONFIG_LEDS_CLASS=y \
    CONFIG_LEDS_TRIGGERS=y \
    CONFIG_LEDS_GPIO=y \
    "

RESIN_CONFIGS_DEPS[rce] += " \
    CONFIG_NET=y \
    CONFIG_NET_CORE=y \
    CONIFG_INET=y \
    CONFIG_NETFILTER=y \
    CONFIG_NETFILTER_ADVANCED=y \
    "
