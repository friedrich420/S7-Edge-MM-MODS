.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIDIGITS_KEY:Ljava/lang/String; = "Clidigits"

.field private static final CLIDIGITS_PREFERENCES_NAME:Ljava/lang/String; = "clidigits.preferences_name"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Cyber_Terror:I = 0x13

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Drug_Report:I = 0x11

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_National_Intelligence_Service_KT:I = 0x7

.field private static final ECC_CATEGORY_National_Intelligence_Service_SKT:I = 0x6

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field private static final ECC_CATEGORY_School_Violence:I = 0x12

.field private static final ECC_CATEGORY_Smuggling_Report:I = 0x9

.field private static final ECC_CATEGORY_Spy_Report:I = 0x3

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_CALL_PREFIX:Ljava/lang/String; = "ip_call_prefix_sub"

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field static final MIN_MATCH:I = 0x7

.field static final MIN_MATCH_CHINA:I = 0xb

.field static final MIN_MATCH_HK:I = 0x8

.field static final MIN_MATCH_TW:I = 0x9

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_IDP_STRING_00:Ljava/lang/String; = "00"

.field private static final NANP_IDP_STRING_001:Ljava/lang/String; = "001"

.field private static final NANP_IDP_STRING_005:Ljava/lang/String; = "005"

.field private static final NANP_IDP_STRING_00700:Ljava/lang/String; = "00700"

.field private static final NANP_IDP_STRING_010:Ljava/lang/String; = "010"

.field private static final NANP_IDP_STRING_011:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final OTA_COUNTRY_URI:Landroid/net/Uri;

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field public static isAssistedDialingNumber:Z

.field private static isCDMARegistered:Z

.field private static isGSMRegistered:Z

.field private static isNANPCountry:Z

.field private static isNBPCDSupported:Z

.field private static isNetRoaming:Z

.field private static isOTANANPCountry:Z

.field private static isOTANBPCDSupported:Z

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;

.field private static mCursor:Landroid/database/Cursor;

.field private static mCursorContry:Landroid/database/Cursor;

.field private static numberLength:I

.field private static otaCountryCountryCode:Ljava/lang/String;

.field private static otaCountryIDDPrefix:Ljava/lang/String;

.field private static otaCountryMCC:Ljava/lang/String;

.field private static otaCountryNDDPrefix:Ljava/lang/String;

.field private static otaCountryName:Ljava/lang/String;

.field private static phoneType:I

.field private static refCountryAreaCode:Ljava/lang/String;

.field private static refCountryCountryCode:Ljava/lang/String;

.field private static refCountryIDDPrefix:Ljava/lang/String;

.field private static refCountryMCC:Ljava/lang/String;

.field private static refCountryNDDPrefix:Ljava/lang/String;

.field private static refCountryName:Ljava/lang/String;

.field private static refCountryNationalNumberLength:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    const/4 v2, 0x0

    .line 130
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, refCountryName:Ljava/lang/String;

    .line 137
    const-string v0, ""

    sput-object v0, refCountryIDDPrefix:Ljava/lang/String;

    .line 138
    const-string v0, ""

    sput-object v0, refCountryNDDPrefix:Ljava/lang/String;

    .line 139
    const-string v0, ""

    sput-object v0, refCountryCountryCode:Ljava/lang/String;

    .line 140
    const-string v0, ""

    sput-object v0, refCountryMCC:Ljava/lang/String;

    .line 141
    sput-boolean v2, isNANPCountry:Z

    .line 142
    sput-boolean v2, isNBPCDSupported:Z

    .line 144
    const-string v0, ""

    sput-object v0, refCountryAreaCode:Ljava/lang/String;

    .line 146
    sput-boolean v2, isGSMRegistered:Z

    .line 147
    sput-boolean v2, isCDMARegistered:Z

    .line 150
    const-string v0, ""

    sput-object v0, otaCountryName:Ljava/lang/String;

    .line 151
    const-string v0, ""

    sput-object v0, otaCountryMCC:Ljava/lang/String;

    .line 152
    const-string v0, ""

    sput-object v0, otaCountryIDDPrefix:Ljava/lang/String;

    .line 153
    const-string v0, ""

    sput-object v0, otaCountryNDDPrefix:Ljava/lang/String;

    .line 154
    const-string v0, ""

    sput-object v0, otaCountryCountryCode:Ljava/lang/String;

    .line 155
    sput-boolean v2, isOTANANPCountry:Z

    .line 156
    sput-boolean v2, isOTANBPCDSupported:Z

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 159
    sput v2, phoneType:I

    .line 160
    sput v2, numberLength:I

    .line 162
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 163
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, MCC_OTA_URI:Landroid/net/Uri;

    .line 164
    const-string v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, OTA_COUNTRY_URI:Landroid/net/Uri;

    .line 167
    sput-boolean v2, isAssistedDialingNumber:Z

    .line 168
    sput-boolean v2, isNetRoaming:Z

    .line 183
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1390
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, NANP_COUNTRIES:[Ljava/lang/String;

    .line 2814
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2816
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2817
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2819
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2820
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2822
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2823
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2825
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2826
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2828
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2829
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2831
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2832
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2834
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2835
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2837
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2838
    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3668
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_2ba

    sput-object v0, COUNTRY_CALLING_CALL:[Z

    .line 3680
    sget-object v0, COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, CCC_LENGTH:I

    return-void

    .line 3668
    :array_2ba
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3703
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1256
    invoke-static {p0}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 20
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1327
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1328
    .local v9, "numberLenReal":I
    move v8, v9

    .line 1329
    .local v8, "numberLenEffective":I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3a

    const/4 v4, 0x1

    .line 1330
    .local v4, "hasPlus":Z
    :goto_14
    const/16 v15, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3c

    const/4 v5, 0x1

    .line 1331
    .local v5, "hasSharp":Z
    :goto_23
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3e

    const/4 v6, 0x1

    .line 1333
    .local v6, "hasStar":Z
    :goto_32
    if-eqz v4, :cond_36

    add-int/lit8 v8, v8, -0x1

    .line 1335
    :cond_36
    if-nez v8, :cond_40

    const/4 v12, 0x0

    .line 1368
    :goto_39
    return-object v12

    .line 1329
    .end local v4    # "hasPlus":Z
    .end local v5    # "hasSharp":Z
    .end local v6    # "hasStar":Z
    :cond_3a
    const/4 v4, 0x0

    goto :goto_14

    .line 1330
    .restart local v4    # "hasPlus":Z
    :cond_3c
    const/4 v5, 0x0

    goto :goto_23

    .line 1331
    .restart local v5    # "hasSharp":Z
    :cond_3e
    const/4 v6, 0x0

    goto :goto_32

    .line 1337
    .restart local v6    # "hasStar":Z
    :cond_40
    add-int/lit8 v15, v8, 0x1

    div-int/lit8 v13, v15, 0x2

    .line 1338
    .local v13, "resultLen":I
    const/4 v3, 0x1

    .line 1339
    .local v3, "extraBytes":I
    if-eqz p1, :cond_49

    add-int/lit8 v3, v3, 0x1

    .line 1340
    :cond_49
    add-int/2addr v13, v3

    .line 1342
    new-array v12, v13, [B

    .line 1344
    .local v12, "result":[B
    const/4 v2, 0x0

    .line 1345
    .local v2, "digitCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4e
    if-ge v7, v9, :cond_86

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1347
    .local v1, "c":C
    const/16 v15, 0x2b

    if-ne v1, v15, :cond_5d

    .line 1345
    :goto_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 1348
    :cond_5d
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_84

    const/4 v14, 0x4

    .line 1349
    .local v14, "shift":I
    :goto_66
    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    invoke-static {v1}, charToBCD(C)I

    move-result v17

    and-int/lit8 v17, v17, 0xf

    shl-int v17, v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1350
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1348
    .end local v14    # "shift":I
    :cond_84
    const/4 v14, 0x0

    goto :goto_66

    .line 1354
    .end local v1    # "c":C
    :cond_86
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a0

    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1356
    :cond_a0
    const/4 v10, 0x0

    .line 1357
    .local v10, "offset":I
    if-eqz p1, :cond_ab

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .local v11, "offset":I
    add-int/lit8 v15, v13, -0x1

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    move v10, v11

    .line 1358
    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :cond_ab
    if-eqz v4, :cond_d7

    const/16 v15, 0x91

    :goto_af
    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1361
    if-nez v5, :cond_b6

    if-eqz v6, :cond_bd

    .line 1362
    :cond_b6
    aget-byte v15, v12, v10

    and-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1366
    :cond_bd
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TOA: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v12, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, log(Ljava/lang/String;)V

    goto/16 :goto_39

    .line 1358
    :cond_d7
    const/16 v15, 0x81

    goto :goto_af
.end method

.method private static KorMsgbcdToChar(B)C
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 1183
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1184
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1191
    :goto_7
    return v0

    .line 1185
    :cond_8
    packed-switch p0, :pswitch_data_1c

    .line 1191
    const/4 v0, 0x0

    goto :goto_7

    .line 1186
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1187
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1188
    :pswitch_13
    const/16 v0, 0x61

    goto :goto_7

    .line 1189
    :pswitch_16
    const/16 v0, 0x62

    goto :goto_7

    .line 1190
    :pswitch_19
    const/16 v0, 0x63

    goto :goto_7

    .line 1185
    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .registers 5
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 3092
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3096
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3528
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 3529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3530
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3538
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_15
    return-object v2

    .line 3535
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3536
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_15
.end method

.method public static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 29
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4714
    :try_start_0
    const-string v5, "PhoneNumberUtils"

    const-string v6, "Called assistedDialFromContactList : "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    if-eqz p0, :cond_f

    invoke-static/range {p0 .. p0}, isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 4716
    :cond_f
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5253
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_12
    return-object p0

    .line 4720
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_13
    invoke-static/range {p0 .. p0}, convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4721
    invoke-static/range {p0 .. p0}, stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4723
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 4724
    .local v11, "ch":C
    invoke-static {v11}, isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_2c

    const/16 v5, 0x2b

    if-ne v5, v11, :cond_6b

    .line 4726
    :cond_2c
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    invoke-static/range {p0 .. p1}, retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 4737
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_12

    .line 5250
    .end local v11    # "ch":C
    :catch_4e
    move-exception v12

    .line 5251
    .local v12, "e":Ljava/lang/Exception;
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot assist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto :goto_12

    .line 4730
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "ch":C
    :cond_6b
    :try_start_6b
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto :goto_12

    .line 4742
    :cond_87
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4744
    .local v17, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v5, refCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 4745
    .local v25, "numberBeginsWithRefCountryNDDPrefix":Z
    sget-object v5, refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 4746
    .local v24, "numberBeginsWithRefCountryIDDPrefix":Z
    const-string v5, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18f

    const/16 v21, 0x1

    .line 4747
    .local v21, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_ac
    sget-object v5, otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    .line 4748
    .local v22, "numberBeginsWithOTAIDDPrefix":Z
    sget-object v5, otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 4751
    .local v23, "numberBeginsWithOTANDDPrefix":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 4753
    .local v10, "c":C
    invoke-static/range {p1 .. p1}, checkAssistedDialingTestmode(Landroid/content/Context;)V

    .line 4755
    sget-boolean v5, isCDMARegistered:Z

    if-eqz v5, :cond_5f6

    .line 4758
    invoke-static {v10}, isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_4dc

    .line 4760
    sget-boolean v5, isNetRoaming:Z

    if-eqz v5, :cond_d8

    sget-boolean v5, isOTANANPCountry:Z

    if-eqz v5, :cond_25c

    .line 4763
    :cond_d8
    if-eqz v21, :cond_1bf

    sget v5, numberLength:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1bf

    const/16 v5, 0x31

    if-eq v5, v10, :cond_1bf

    .line 4765
    const/4 v15, 0x0

    .line 4766
    .local v15, "match":Z
    const/4 v13, 0x0

    .line 4772
    .local v13, "findIDDLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4774
    .local v2, "iddcr":Landroid/content/ContentResolver;
    sget-object v3, MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, mCursor:Landroid/database/Cursor;

    .line 4775
    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4777
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4778
    .local v3, "ContryCode":Landroid/content/ContentResolver;
    sget-object v4, MCC_OTA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, mCursorContry:Landroid/database/Cursor;

    .line 4779
    :goto_10b
    sget-object v5, mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_15d

    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_15d

    .line 4781
    sget-object v5, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4782
    :goto_11c
    sget-object v5, mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_15b

    sget-object v5, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_15b

    .line 4784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, mCursorContry:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_193

    .line 4786
    sget-object v5, mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    .line 4787
    const/4 v15, 0x1

    .line 4793
    :cond_15b
    if-eqz v15, :cond_199

    .line 4800
    :cond_15d
    sget-object v5, mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_166

    .line 4802
    sget-object v5, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4804
    :cond_166
    sget-object v5, mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_16f

    .line 4806
    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4809
    :cond_16f
    if-nez v15, :cond_1a0

    .line 4813
    const-string v5, "011"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4814
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4816
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4818
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4746
    .end local v2    # "iddcr":Landroid/content/ContentResolver;
    .end local v3    # "ContryCode":Landroid/content/ContentResolver;
    .end local v10    # "c":C
    .end local v13    # "findIDDLen":I
    .end local v15    # "match":Z
    .end local v21    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v22    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v23    # "numberBeginsWithOTANDDPrefix":Z
    :cond_18f
    const/16 v21, 0x0

    goto/16 :goto_ac

    .line 4790
    .restart local v2    # "iddcr":Landroid/content/ContentResolver;
    .restart local v3    # "ContryCode":Landroid/content/ContentResolver;
    .restart local v10    # "c":C
    .restart local v13    # "findIDDLen":I
    .restart local v15    # "match":Z
    .restart local v21    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v22    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v23    # "numberBeginsWithOTANDDPrefix":Z
    :cond_193
    sget-object v5, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_11c

    .line 4797
    :cond_199
    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_10b

    .line 4822
    :cond_1a0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    const/4 v5, 0x0

    const-string v6, "011"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v13, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4827
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4829
    .end local v2    # "iddcr":Landroid/content/ContentResolver;
    .end local v3    # "ContryCode":Landroid/content/ContentResolver;
    .end local v13    # "findIDDLen":I
    .end local v15    # "match":Z
    :cond_1bf
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_23e

    .line 4831
    if-eqz v25, :cond_207

    .line 4833
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_1fb

    .line 4836
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4837
    const/4 v5, 0x0

    sget-object v6, refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4841
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4847
    :cond_1fb
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4852
    :cond_207
    if-eqz v23, :cond_23e

    .line 4854
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_232

    .line 4857
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4858
    const/4 v5, 0x0

    sget-object v6, otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4860
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4862
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4868
    :cond_232
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-4] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4875
    :cond_23e
    if-eqz v24, :cond_4dc

    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4dc

    .line 4877
    sget-object v5, refCountryIDDPrefix:Ljava/lang/String;

    const-string v6, "011"

    if-ne v5, v6, :cond_4dc

    .line 4880
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing5-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4881
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4889
    :cond_25c
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_357

    .line 4891
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2d4

    .line 4893
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    sget-object v6, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c8

    .line 4895
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_2a3

    .line 4898
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4899
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4900
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4902
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4904
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4909
    :cond_2a3
    sget-object v5, otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4910
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4911
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4913
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4915
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4922
    :cond_2c8
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4927
    :cond_2d4
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_357

    .line 4929
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    sget-object v6, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34b

    .line 4931
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_31f

    .line 4934
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4935
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4936
    sget-object v5, refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4937
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4939
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4940
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4941
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4946
    :cond_31f
    sget-object v5, otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4947
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4948
    sget-object v5, refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4949
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4951
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4953
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4960
    :cond_34b
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4967
    :cond_357
    const/4 v14, 0x0

    .local v14, "iddPrefix":Ljava/lang/String;
    const/16 v18, 0x0

    .line 4968
    .local v18, "numberAfterIDDPrefix":Ljava/lang/String;
    if-nez v24, :cond_35e

    if-eqz v22, :cond_446

    .line 4970
    :cond_35e
    const/4 v5, 0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_3ad

    .line 4972
    sget-object v14, refCountryIDDPrefix:Ljava/lang/String;

    .line 4973
    sget-object v5, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4982
    :goto_375
    sget-object v5, otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3ea

    .line 4984
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_3c0

    .line 4987
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4988
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4990
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 4992
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4977
    :cond_3ad
    sget-object v14, otaCountryIDDPrefix:Ljava/lang/String;

    .line 4978
    sget-object v5, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_375

    .line 4997
    :cond_3c0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4998
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5000
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5002
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5007
    :cond_3ea
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_411

    .line 5010
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5011
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5013
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5015
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5019
    :cond_411
    if-eqz v24, :cond_438

    .line 5022
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5023
    const/4 v5, 0x0

    sget-object v6, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5025
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-4] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5027
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5029
    :cond_438
    if-eqz v22, :cond_4dc

    .line 5033
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-5] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5042
    :cond_446
    if-nez v25, :cond_44a

    if-eqz v23, :cond_4dc

    :cond_44a
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_4dc

    .line 5045
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    sget-object v6, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d0

    .line 5047
    const/16 v16, 0x0

    .line 5048
    .local v16, "nddPrefix":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_495

    .line 5050
    sget-object v16, refCountryNDDPrefix:Ljava/lang/String;

    .line 5056
    :goto_46e
    sget-boolean v5, isNBPCDSupported:Z

    if-eqz v5, :cond_498

    .line 5059
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5062
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5064
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5054
    :cond_495
    sget-object v16, otaCountryNDDPrefix:Ljava/lang/String;

    goto :goto_46e

    .line 5069
    :cond_498
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 5070
    .local v26, "temp":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5071
    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5073
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5075
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5082
    .end local v16    # "nddPrefix":Ljava/lang/String;
    .end local v26    # "temp":Ljava/lang/String;
    :cond_4d0
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5092
    .end local v14    # "iddPrefix":Ljava/lang/String;
    .end local v18    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_4dc
    const/16 v5, 0x2b

    if-ne v5, v10, :cond_5f6

    sget-boolean v5, isNBPCDSupported:Z

    if-nez v5, :cond_5f6

    .line 5094
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 5095
    .local v19, "numberAfterPlus":Ljava/lang/String;
    sget-object v5, otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    .line 5097
    .local v20, "numberAfterPlusContainsOTACountryCode":Z
    sget-boolean v5, isNetRoaming:Z

    if-eqz v5, :cond_548

    sget-boolean v5, isOTANANPCountry:Z

    if-nez v5, :cond_548

    .line 5100
    if-eqz v20, :cond_528

    .line 5102
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5103
    const/4 v5, 0x0

    sget-object v6, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    sget-object v7, otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5105
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5109
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5113
    :cond_528
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5114
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5116
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5120
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5126
    :cond_548
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_5f6

    .line 5128
    const/16 v5, 0xb

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_56f

    const/16 v5, 0x31

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_56f

    .line 5132
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5137
    :cond_56f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5138
    .local v4, "pluscr":Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 5139
    .restart local v15    # "match":Z
    sget-object v5, MCC_OTA_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, mCursor:Landroid/database/Cursor;

    .line 5140
    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5144
    :goto_585
    sget-object v5, mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5a1

    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_5a1

    .line 5146
    sget-object v5, mCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b3

    .line 5148
    const/4 v15, 0x1

    .line 5154
    :cond_5a1
    sget-object v5, mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5a7

    if-nez v15, :cond_5b9

    .line 5158
    :cond_5a7
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5151
    :cond_5b3
    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_585

    .line 5162
    :cond_5b9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_5f6

    .line 5164
    sget-object v5, mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5166
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5167
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5169
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5171
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5178
    .end local v4    # "pluscr":Landroid/content/ContentResolver;
    .end local v15    # "match":Z
    .end local v19    # "numberAfterPlus":Ljava/lang/String;
    .end local v20    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_5f6
    sget-boolean v5, isGSMRegistered:Z

    if-eqz v5, :cond_710

    .line 5180
    invoke-static {v10}, isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_6ea

    .line 5182
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_676

    .line 5184
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_639

    .line 5187
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5188
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5191
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5193
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5195
    :cond_639
    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_710

    .line 5197
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    sget-object v5, refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    sget-object v5, refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5202
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5204
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5209
    :cond_676
    if-eqz v24, :cond_69d

    .line 5212
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5213
    const/4 v5, 0x0

    sget-object v6, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5215
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5217
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5219
    :cond_69d
    if-eqz v25, :cond_710

    sget v5, numberLength:I

    sget-object v6, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_710

    .line 5221
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 5222
    .restart local v26    # "temp":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5223
    const/4 v5, 0x0

    sget-object v6, refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5225
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5227
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5230
    .end local v26    # "temp":Ljava/lang/String;
    :cond_6ea
    const-string v5, "+011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_710

    .line 5231
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5232
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5233
    const/4 v5, 0x1

    sput-boolean v5, isAssistedDialingNumber:Z

    .line 5234
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5239
    :cond_710
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing13-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5240
    const/4 v5, 0x0

    sput-boolean v5, isAssistedDialingNumber:Z
    :try_end_71a
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_71a} :catch_4e

    goto/16 :goto_12
.end method

.method public static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 17
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5445
    :try_start_0
    const-string v12, "PhoneNumberUtils"

    const-string v13, "Called assistedDialFromDialPad : "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    if-eqz p0, :cond_f

    invoke-static {p0}, isUriNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 5448
    :cond_f
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5628
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_12
    return-object p0

    .line 5452
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_13
    invoke-static {p0}, convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5453
    invoke-static {p0}, stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5455
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5456
    .local v1, "ch":C
    invoke-static {v1}, isISODigit(C)Z

    move-result v12

    if-nez v12, :cond_2a

    const/16 v12, 0x2b

    if-ne v12, v1, :cond_70

    .line 5458
    :cond_2a
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    invoke-static/range {p0 .. p1}, retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_8c

    .line 5468
    const-string v12, "PhoneNumberUtils"

    const-string v13, "Problem in retrieving Assisted db params, Returning original number"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_12

    .line 5625
    .end local v1    # "ch":C
    :catch_53
    move-exception v2

    .line 5626
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot assist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    goto :goto_12

    .line 5462
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "ch":C
    :cond_70
    :try_start_70
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    goto :goto_12

    .line 5474
    :cond_8c
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5476
    .local v5, "newPhoneNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_dialing"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_126

    const/4 v3, 0x1

    .line 5477
    .local v3, "enableAssistedDialing":Z
    :goto_a2
    if-eqz v3, :cond_129

    sget-object v12, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_129

    const/4 v11, 0x1

    .line 5478
    .local v11, "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :goto_ad
    sget-object v12, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 5480
    .local v10, "numberBeginsWithOTAIDDPrefix":Z
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enableAssistedDialing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", numberBeginsWithRefCountryIDDPrefixWithAdEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    invoke-static/range {p1 .. p1}, checkAssistedDialingTestmode(Landroid/content/Context;)V

    .line 5486
    sget-boolean v12, isCDMARegistered:Z

    if-eqz v12, :cond_248

    .line 5488
    sget-boolean v12, isNetRoaming:Z

    if-eqz v12, :cond_ee

    sget-boolean v12, isOTANANPCountry:Z

    if-eqz v12, :cond_12d

    .line 5491
    :cond_ee
    const-string v12, "011"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12b

    const/4 v9, 0x1

    .line 5492
    .local v9, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_f7
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5493
    .local v0, "c":C
    invoke-static {v0}, isISODigit(C)Z

    move-result v12

    if-eqz v12, :cond_248

    .line 5495
    if-eqz v9, :cond_248

    sget v12, numberLength:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_248

    const/16 v12, 0x31

    if-eq v12, v0, :cond_248

    .line 5497
    const-string v12, "011"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5498
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5500
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingA-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    const/4 v12, 0x1

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5502
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5476
    .end local v0    # "c":C
    .end local v3    # "enableAssistedDialing":Z
    .end local v9    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v10    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v11    # "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :cond_126
    const/4 v3, 0x0

    goto/16 :goto_a2

    .line 5477
    .restart local v3    # "enableAssistedDialing":Z
    :cond_129
    const/4 v11, 0x0

    goto :goto_ad

    .line 5491
    .restart local v10    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v11    # "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :cond_12b
    const/4 v9, 0x0

    goto :goto_f7

    .line 5509
    :cond_12d
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5510
    .restart local v0    # "c":C
    invoke-static {v0}, isISODigit(C)Z

    move-result v12

    if-nez v12, :cond_13c

    const/16 v12, 0x2b

    if-ne v12, v0, :cond_248

    .line 5512
    :cond_13c
    sget v12, numberLength:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_248

    sget v12, numberLength:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_14c

    const/16 v12, 0x31

    if-eq v12, v0, :cond_248

    .line 5514
    :cond_14c
    const/4 v4, 0x0

    .local v4, "iddPrefix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5515
    .local v6, "numberAfterIDDPrefix":Ljava/lang/String;
    if-nez v11, :cond_152

    if-eqz v10, :cond_165

    .line 5517
    :cond_152
    const/4 v12, 0x1

    if-ne v12, v11, :cond_19f

    .line 5519
    sget-object v4, refCountryIDDPrefix:Ljava/lang/String;

    .line 5520
    sget-object v12, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5529
    :cond_165
    :goto_165
    const/16 v12, 0x2b

    if-ne v12, v0, :cond_1ca

    sget-boolean v12, isNBPCDSupported:Z

    if-nez v12, :cond_1ca

    .line 5531
    const/4 v12, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5532
    .local v7, "numberAfterPlus":Ljava/lang/String;
    sget-object v12, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 5533
    .local v8, "numberAfterPlusContainsOTACountryCode":Z
    if-eqz v8, :cond_1b0

    .line 5536
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5537
    const/4 v12, 0x0

    sget-object v13, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    sget-object v14, otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5539
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingB-2] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5541
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5524
    .end local v7    # "numberAfterPlus":Ljava/lang/String;
    .end local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_19f
    sget-object v4, otaCountryIDDPrefix:Ljava/lang/String;

    .line 5525
    sget-object v12, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_165

    .line 5546
    .restart local v7    # "numberAfterPlus":Ljava/lang/String;
    .restart local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_1b0
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5547
    const/4 v12, 0x0

    const/4 v13, 0x1

    sget-object v14, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5549
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingB-3] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5551
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5554
    .end local v7    # "numberAfterPlus":Ljava/lang/String;
    .end local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_1ca
    if-nez v11, :cond_1ce

    if-eqz v10, :cond_248

    .line 5556
    :cond_1ce
    sget-object v12, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22e

    .line 5558
    sget-boolean v12, isNBPCDSupported:Z

    if-eqz v12, :cond_204

    .line 5561
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5562
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const-string v14, "+"

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5564
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    if-eqz v10, :cond_200

    .line 5566
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5569
    :goto_1fa
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5568
    :cond_200
    const/4 v12, 0x1

    sput-boolean v12, isAssistedDialingNumber:Z

    goto :goto_1fa

    .line 5575
    :cond_204
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5576
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5578
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-2] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    if-eqz v10, :cond_22a

    .line 5580
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5583
    :goto_224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5582
    :cond_22a
    const/4 v12, 0x1

    sput-boolean v12, isAssistedDialingNumber:Z

    goto :goto_224

    .line 5586
    :cond_22e
    if-eqz v11, :cond_248

    .line 5589
    sget-object v12, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5590
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5592
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-3] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    const/4 v12, 0x1

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5594
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5602
    .end local v0    # "c":C
    .end local v4    # "iddPrefix":Ljava/lang/String;
    .end local v6    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_248
    sget-boolean v12, isGSMRegistered:Z

    if-eqz v12, :cond_286

    .line 5603
    if-eqz v11, :cond_266

    .line 5605
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5606
    const/4 v12, 0x0

    sget-object v13, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "+"

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5607
    const/4 v12, 0x1

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5609
    :cond_266
    if-eqz v3, :cond_286

    const-string v12, "+011"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_286

    .line 5610
    const-string v12, "+"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5611
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5612
    const/4 v12, 0x1

    sput-boolean v12, isAssistedDialingNumber:Z

    .line 5613
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5619
    :cond_286
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingD-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5622
    const/4 v12, 0x0

    sput-boolean v12, isAssistedDialingNumber:Z
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_290} :catch_53

    goto/16 :goto_12
.end method

.method private static bcdToChar(B)C
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 1149
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1150
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1157
    :goto_7
    return v0

    .line 1151
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 1157
    const/4 v0, 0x0

    goto :goto_7

    .line 1152
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1153
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1154
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 1155
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 1151
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1141
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 984
    const/4 v2, 0x0

    .line 985
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 987
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_14

    .line 988
    const-string v5, ""

    .line 1079
    :goto_13
    return-object v5

    .line 992
    :cond_14
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1d

    .line 993
    const/4 v2, 0x1

    .line 996
    :cond_1d
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 999
    if-eqz v2, :cond_2f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2f

    .line 1001
    const-string v5, ""

    goto :goto_13

    .line 1004
    :cond_2f
    if-eqz v2, :cond_77

    .line 1030
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1032
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1033
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 1034
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_77
    :goto_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 1048
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1057
    :cond_aa
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1058
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1072
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 2876
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 2877
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, isReallyDialable(C)Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-static {p0}, isNonSeparator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 2879
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 2883
    .local v3, "defaultIso":Ljava/lang/String;
    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_99

    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "VZW-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 2884
    const-string/jumbo v5, "persist.radio.test-assisteddial"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2885
    .local v0, "assistedDialingTest":Ljava/lang/String;
    const-string v5, "false"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 2886
    const-string v4, ""

    .line 2887
    .local v4, "iso":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2888
    .local v1, "assistedDialingTestParam":[Ljava/lang/String;
    array-length v5, v1

    if-le v5, v7, :cond_61

    .line 2889
    const-string/jumbo v4, "us"

    .line 2890
    const-string v5, "234"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 2891
    const-string v4, "gb"

    .line 2897
    :cond_61
    :goto_61
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assited Dialing Testmode - currIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    move-object v2, v4

    .line 2899
    move-object v3, v4

    .line 2904
    .end local v0    # "assistedDialingTest":Ljava/lang/String;
    .end local v1    # "assistedDialingTestParam":[Ljava/lang/String;
    .end local v4    # "iso":Ljava/lang/String;
    :cond_99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 2905
    invoke-static {v2}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v5, v6}, cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2911
    .end local v2    # "currIso":Ljava/lang/String;
    .end local v3    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_b1
    return-object p0

    .line 2892
    .restart local v0    # "assistedDialingTest":Ljava/lang/String;
    .restart local v1    # "assistedDialingTestParam":[Ljava/lang/String;
    .restart local v2    # "currIso":Ljava/lang/String;
    .restart local v3    # "defaultIso":Ljava/lang/String;
    .restart local v4    # "iso":Ljava/lang/String;
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_b2
    const-string v5, "460"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 2893
    const-string v4, "cn"

    goto :goto_61
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2919
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2920
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {p0}, isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2922
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2923
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2925
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2926
    invoke-static {v0}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3, p1}, cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2932
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_3f
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 14
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v7, 0x1

    .line 2986
    move-object v3, p0

    .line 2988
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_9c

    if-ne p1, v7, :cond_9c

    move v6, v7

    .line 2991
    .local v6, "useNanp":Z
    :goto_7
    if-eqz p0, :cond_9a

    const-string v8, "+"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9a

    .line 2995
    const/4 v2, 0x0

    .line 2996
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v5, p0

    .line 2999
    .local v5, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3008
    :cond_15
    if-eqz v6, :cond_9f

    .line 3009
    invoke-static {v5}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3015
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_1b
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3016
    .local v4, "salesCode":Ljava/lang/String;
    const-string v8, "CTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    const-string v8, "KDI"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6b

    const-string v8, "LGT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    const-string v8, "domestic"

    const-string/jumbo v9, "ril.currentplmn"

    const-string v10, "domestic"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    const-string v8, "+82"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    :cond_6b
    if-nez v6, :cond_a5

    .line 3028
    :goto_6d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_af

    .line 3029
    if-nez v3, :cond_aa

    .line 3030
    move-object v3, v1

    .line 3041
    :goto_76
    invoke-static {v5}, extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3042
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8e

    .line 3043
    invoke-static {v2}, findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3046
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_b5

    .line 3047
    invoke-static {v0, v3, v2}, appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3050
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3062
    .end local v0    # "dialableIndex":I
    :cond_8e
    :goto_8e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "salesCode":Ljava/lang/String;
    .end local v5    # "tempDialStr":Ljava/lang/String;
    :cond_9a
    move-object p0, v3

    .line 3064
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_9b
    return-object p0

    .line 2988
    .end local v6    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_9c
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 3011
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v5    # "tempDialStr":Ljava/lang/String;
    .restart local v6    # "useNanp":Z
    :cond_9f
    invoke-static {v5}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto/16 :goto_1b

    .line 3024
    .restart local v4    # "salesCode":Ljava/lang/String;
    :cond_a5
    invoke-static {v1, v6}, processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    .line 3032
    :cond_aa
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_76

    .line 3038
    :cond_af
    const-string v7, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 3055
    .restart local v0    # "dialableIndex":I
    :cond_b5
    if-gez v0, :cond_b9

    .line 3056
    const-string v2, ""

    .line 3058
    :cond_b9
    const-string/jumbo v8, "wrong postDialStr="

    invoke-static {v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3188
    move-object v3, p0

    .line 3190
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_a5

    if-ne p1, v7, :cond_a5

    move v6, v7

    .line 3192
    .local v6, "useNanp":Z
    :goto_8
    sget-object v9, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v9, :cond_17

    sget-object v9, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v10, "SPR-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    move v8, v7

    :cond_17
    or-int/2addr v6, v8

    .line 3195
    if-eqz p0, :cond_a3

    const-string v8, "+"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a3

    .line 3199
    const/4 v2, 0x0

    .line 3200
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v5, p0

    .line 3203
    .local v5, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3212
    :cond_26
    if-eqz v6, :cond_a8

    .line 3213
    invoke-static {v5}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3219
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_2c
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3220
    .local v4, "salesCode":Ljava/lang/String;
    const-string v8, "CTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_74

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_74

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_74

    const-string v8, "LGT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    const-string v8, "domestic"

    const-string/jumbo v9, "ril.currentplmn"

    const-string v10, "domestic"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    const-string v8, "+82"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ad

    :cond_74
    if-nez v6, :cond_ad

    .line 3232
    :goto_76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b7

    .line 3233
    if-nez v3, :cond_b2

    .line 3234
    move-object v3, v1

    .line 3245
    :goto_7f
    invoke-static {v5}, extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_97

    .line 3247
    invoke-static {v2}, findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3250
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_bd

    .line 3251
    invoke-static {v0, v3, v2}, appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3254
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3266
    .end local v0    # "dialableIndex":I
    :cond_97
    :goto_97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_26

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "salesCode":Ljava/lang/String;
    .end local v5    # "tempDialStr":Ljava/lang/String;
    :cond_a3
    move-object p0, v3

    .line 3268
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_a4
    return-object p0

    .end local v6    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_a5
    move v6, v8

    .line 3190
    goto/16 :goto_8

    .line 3215
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v5    # "tempDialStr":Ljava/lang/String;
    .restart local v6    # "useNanp":Z
    :cond_a8
    invoke-static {v5}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto :goto_2c

    .line 3228
    .restart local v4    # "salesCode":Ljava/lang/String;
    :cond_ad
    invoke-static {v1, v6, p3}, processPlusCode(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_76

    .line 3236
    :cond_b2
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7f

    .line 3242
    :cond_b7
    const-string v7, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 3259
    .restart local v0    # "dialableIndex":I
    :cond_bd
    if-gez v0, :cond_c1

    .line 3260
    const-string v2, ""

    .line 3262
    :cond_c1
    const-string/jumbo v8, "wrong postDialStr="

    invoke-static {v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2945
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2946
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p0}, isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2947
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2948
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2949
    invoke-static {v0}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2950
    .local v1, "format":I
    invoke-static {p0, v1, v1}, cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2954
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_2d
    return-object p0
.end method

.method private static charToBCD(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 1163
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1164
    add-int/lit8 v0, p0, -0x30

    .line 1174
    :goto_a
    return v0

    .line 1165
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 1166
    const/16 v0, 0xa

    goto :goto_a

    .line 1167
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 1168
    const/16 v0, 0xb

    goto :goto_a

    .line 1169
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 1170
    const/16 v0, 0xc

    goto :goto_a

    .line 1171
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 1172
    const/16 v0, 0xd

    goto :goto_a

    .line 1173
    :cond_27
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_2e

    .line 1174
    const/16 v0, 0xe

    goto :goto_a

    .line 1176
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAssistedDialingTestmode(Landroid/content/Context;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 5381
    const-string/jumbo v1, "persist.radio.test-assisteddial"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5382
    .local v6, "assistedDialingTest":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 5383
    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5384
    .local v7, "assistedDialingTestParam":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1c
    array-length v1, v7

    if-ge v9, v1, :cond_46

    .line 5385
    const-string v1, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assisted Dialing Testmode Parameter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 5388
    :cond_46
    array-length v1, v7

    if-lez v1, :cond_a9

    .line 5389
    const-string v1, "gsm"

    aget-object v3, v7, v11

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    move v1, v10

    :goto_54
    sput-boolean v1, isGSMRegistered:Z

    .line 5390
    sget-boolean v1, isGSMRegistered:Z

    if-nez v1, :cond_ac

    move v1, v10

    :goto_5b
    sput-boolean v1, isCDMARegistered:Z

    .line 5392
    array-length v1, v7

    if-le v1, v10, :cond_9f

    .line 5393
    const-string/jumbo v1, "roam"

    aget-object v3, v7, v10

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    move v1, v10

    :goto_6c
    sput-boolean v1, isNetRoaming:Z

    .line 5395
    array-length v1, v7

    if-le v1, v12, :cond_9f

    .line 5396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5398
    .local v0, "otacr":Landroid/content/ContentResolver;
    const-string v1, "310"

    aget-object v3, v7, v12

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 5399
    sget-object v1, MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "310 to 316"

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5404
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_8f
    sput-object v2, otaCountryMCC:Ljava/lang/String;

    .line 5405
    if-nez v8, :cond_c1

    .line 5406
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dialing Testmode - cursor is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    :goto_9a
    if-eqz v8, :cond_9f

    .line 5427
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5432
    .end local v0    # "otacr":Landroid/content/ContentResolver;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_9f
    const-string v1, "PhoneNumberUtils"

    const-string v2, "========== Assisted Dialing Parameter for Testmode =========="

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    invoke-static {}, displayAssistedParams()V

    .line 5436
    .end local v7    # "assistedDialingTestParam":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_a9
    return-void

    .restart local v7    # "assistedDialingTestParam":[Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_aa
    move v1, v11

    .line 5389
    goto :goto_54

    :cond_ac
    move v1, v11

    .line 5390
    goto :goto_5b

    :cond_ae
    move v1, v11

    .line 5393
    goto :goto_6c

    .line 5401
    .restart local v0    # "otacr":Landroid/content/ContentResolver;
    :cond_b0
    sget-object v1, MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    new-array v4, v10, [Ljava/lang/String;

    aget-object v5, v7, v12

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_8f

    .line 5407
    :cond_c1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 5408
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dialing Testmode - cursor is empty"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 5410
    :cond_cf
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dialing Testmode - find cursor"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryName:Ljava/lang/String;

    .line 5412
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryMCC:Ljava/lang/String;

    .line 5414
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryIDDPrefix:Ljava/lang/String;

    .line 5415
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryNDDPrefix:Ljava/lang/String;

    .line 5416
    sget-object v1, otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_f8

    .line 5417
    const-string v1, ""

    sput-object v1, otaCountryNDDPrefix:Ljava/lang/String;

    .line 5420
    :cond_f8
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    :goto_105
    sput-boolean v10, isOTANANPCountry:Z

    .line 5421
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryCountryCode:Ljava/lang/String;

    .line 5422
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, isOTANBPCDSupported:Z

    .line 5423
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    const-string v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    const-string v1, "310"

    :goto_125
    sput-object v1, otaCountryMCC:Ljava/lang/String;

    goto/16 :goto_9a

    :cond_129
    move v10, v11

    .line 5420
    goto :goto_105

    .line 5423
    :cond_12b
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    const-string v1, "430"

    goto :goto_125

    :cond_138
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    goto :goto_125
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 3831
    const/4 v0, 0x0

    .line 3832
    .local v0, "trunk_prefix_was_read":Z
    :goto_2
    if-lt p2, p1, :cond_20

    .line 3833
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_15

    .line 3834
    if-eqz v0, :cond_11

    .line 3849
    :goto_10
    return v1

    .line 3840
    :cond_11
    const/4 v0, 0x1

    .line 3846
    :cond_12
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3842
    :cond_15
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_10

    .line 3849
    :cond_20
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 528
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 535
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 556
    const/4 v9, 0x0

    .line 557
    .local v9, "numNonDialableCharsInA":I
    const/4 v10, 0x0

    .line 559
    .local v10, "numNonDialableCharsInB":I
    if-eqz p0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v13, 0x1

    .line 709
    :goto_9
    return v13

    .line 559
    :cond_a
    const/4 v13, 0x0

    goto :goto_9

    .line 561
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1a

    .line 562
    :cond_18
    const/4 v13, 0x0

    goto :goto_9

    .line 565
    :cond_1a
    invoke-static {p0}, indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v6

    .line 566
    .local v6, "ia":I
    invoke-static {p1}, indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v7

    .line 567
    .local v7, "ib":I
    const/4 v8, 0x0

    .line 569
    .local v8, "matched":I
    :cond_23
    :goto_23
    if-ltz v6, :cond_52

    if-ltz v7, :cond_52

    .line 571
    const/4 v12, 0x0

    .line 573
    .local v12, "skipCmp":Z
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 575
    .local v2, "ca":C
    invoke-static {v2}, isDialable(C)Z

    move-result v13

    if-nez v13, :cond_37

    .line 576
    add-int/lit8 v6, v6, -0x1

    .line 577
    const/4 v12, 0x1

    .line 578
    add-int/lit8 v9, v9, 0x1

    .line 581
    :cond_37
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 583
    .local v3, "cb":C
    invoke-static {v3}, isDialable(C)Z

    move-result v13

    if-nez v13, :cond_46

    .line 584
    add-int/lit8 v7, v7, -0x1

    .line 585
    const/4 v12, 0x1

    .line 586
    add-int/lit8 v10, v10, 0x1

    .line 589
    :cond_46
    if-nez v12, :cond_23

    .line 590
    if-eq v3, v2, :cond_98

    const/16 v13, 0x4e

    if-eq v2, v13, :cond_98

    const/16 v13, 0x4e

    if-eq v3, v13, :cond_98

    .line 597
    .end local v2    # "ca":C
    .end local v3    # "cb":C
    .end local v12    # "skipCmp":Z
    :cond_52
    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 599
    .local v11, "salesCode":Ljava/lang/String;
    const-string v13, "CHN"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    const-string v13, "CHU"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    const-string v13, "CHM"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    const-string v13, "CTC"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    const-string v13, "CHC"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ad

    .line 600
    :cond_81
    const/16 v13, 0xb

    if-ge v8, v13, :cond_a2

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 602
    .local v4, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 605
    .local v5, "effectiveBLen":I
    if-ne v4, v5, :cond_9f

    if-ne v4, v8, :cond_9f

    .line 606
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 593
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    .end local v11    # "salesCode":Ljava/lang/String;
    .restart local v2    # "ca":C
    .restart local v3    # "cb":C
    .restart local v12    # "skipCmp":Z
    :cond_98
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 608
    .end local v2    # "ca":C
    .end local v3    # "cb":C
    .end local v12    # "skipCmp":Z
    .restart local v4    # "effectiveALen":I
    .restart local v5    # "effectiveBLen":I
    .restart local v11    # "salesCode":Ljava/lang/String;
    :cond_9f
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 611
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_a2
    const/16 v13, 0xb

    if-lt v8, v13, :cond_148

    if-ltz v6, :cond_aa

    if-gez v7, :cond_148

    .line 612
    :cond_aa
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 615
    :cond_ad
    const-string v13, "FET"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_cd

    const-string v13, "TWM"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_cd

    const-string v13, "CWT"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_cd

    const-string v13, "BRI"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 616
    :cond_cd
    const/16 v13, 0x9

    if-ge v8, v13, :cond_e7

    .line 617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 618
    .restart local v4    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 621
    .restart local v5    # "effectiveBLen":I
    if-ne v4, v5, :cond_e4

    if-ne v4, v8, :cond_e4

    .line 622
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 624
    :cond_e4
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 627
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_e7
    const/16 v13, 0x9

    if-lt v8, v13, :cond_148

    if-ltz v6, :cond_ef

    if-gez v7, :cond_148

    .line 628
    :cond_ef
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 631
    :cond_f2
    const-string v13, "TGY"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11f

    .line 632
    const/16 v13, 0x8

    if-ge v8, v13, :cond_114

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 634
    .restart local v4    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 637
    .restart local v5    # "effectiveBLen":I
    if-ne v4, v5, :cond_111

    if-ne v4, v8, :cond_111

    .line 638
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 640
    :cond_111
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 643
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_114
    const/16 v13, 0x8

    if-lt v8, v13, :cond_148

    if-ltz v6, :cond_11c

    if-gez v7, :cond_148

    .line 644
    :cond_11c
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 647
    :cond_11f
    invoke-static {}, getMinMatch()I

    move-result v13

    if-ge v8, v13, :cond_13b

    .line 648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 649
    .restart local v4    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 654
    .restart local v5    # "effectiveBLen":I
    if-ne v4, v5, :cond_138

    if-ne v4, v8, :cond_138

    .line 655
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 657
    :cond_138
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 661
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_13b
    invoke-static {}, getMinMatch()I

    move-result v13

    if-lt v8, v13, :cond_148

    if-ltz v6, :cond_145

    if-gez v7, :cond_148

    .line 662
    :cond_145
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 676
    :cond_148
    add-int/lit8 v13, v6, 0x1

    invoke-static {p0, v13}, matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_15b

    add-int/lit8 v13, v7, 0x1

    invoke-static {p1, v13}, matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_15b

    .line 679
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 682
    :cond_15b
    add-int/lit8 v13, v6, 0x1

    invoke-static {p0, v13}, matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_16e

    add-int/lit8 v13, v7, 0x1

    invoke-static {p1, v13}, matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_16e

    .line 685
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 688
    :cond_16e
    add-int/lit8 v13, v7, 0x1

    invoke-static {p1, v13}, matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_181

    add-int/lit8 v13, v6, 0x1

    invoke-static {p0, v13}, matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_181

    .line 691
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 702
    :cond_181
    const-string v13, "+"

    invoke-virtual {p0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 703
    .local v0, "aPlusFirst":Z
    const-string v13, "+"

    invoke-virtual {p1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 704
    .local v1, "bPlusFirst":Z
    const/4 v13, 0x4

    if-ge v6, v13, :cond_19e

    const/4 v13, 0x4

    if-ge v7, v13, :cond_19e

    if-nez v0, :cond_197

    if-eqz v1, :cond_19e

    :cond_197
    if-eqz v0, :cond_19b

    if-nez v1, :cond_19e

    .line 706
    :cond_19b
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 709
    :cond_19e
    const/4 v13, 0x0

    goto/16 :goto_9
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 717
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 23
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 726
    if-eqz p0, :cond_4

    if-nez p1, :cond_10

    .line 727
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    .line 864
    :goto_c
    return v18

    .line 727
    :cond_d
    const/16 v18, 0x0

    goto :goto_c

    .line 728
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    .line 729
    const/16 v18, 0x0

    goto :goto_c

    .line 732
    :cond_1f
    const/4 v10, 0x0

    .line 733
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 735
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 737
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 739
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 740
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 741
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 742
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 743
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_84

    if-eqz v7, :cond_84

    .line 744
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_48

    .line 746
    const/16 v18, 0x0

    goto :goto_c

    .line 750
    :cond_48
    const/4 v13, 0x0

    .line 751
    const/4 v5, 0x1

    .line 752
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 753
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 779
    :cond_4e
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 780
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 781
    .local v4, "backwardIndexB":I
    :cond_5a
    :goto_5a
    if-lt v3, v10, :cond_b8

    if-lt v4, v11, :cond_b8

    .line 782
    const/4 v14, 0x0

    .line 783
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 784
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 785
    .local v9, "chB":C
    invoke-static {v8}, isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_74

    .line 786
    add-int/lit8 v3, v3, -0x1

    .line 787
    const/4 v14, 0x1

    .line 789
    :cond_74
    invoke-static {v9}, isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 790
    add-int/lit8 v4, v4, -0x1

    .line 791
    const/4 v14, 0x1

    .line 794
    :cond_7d
    if-nez v14, :cond_5a

    .line 795
    if-eq v8, v9, :cond_b3

    .line 796
    const/16 v18, 0x0

    goto :goto_c

    .line 754
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_84
    if-nez v6, :cond_8a

    if-nez v7, :cond_8a

    .line 757
    const/4 v13, 0x0

    goto :goto_4e

    .line 759
    :cond_8a
    if-eqz v6, :cond_93

    .line 760
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 768
    :cond_8e
    :goto_8e
    if-eqz v7, :cond_a3

    .line 769
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_4e

    .line 762
    :cond_93
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 763
    .local v15, "tmp":I
    if-ltz v15, :cond_8e

    .line 764
    move v10, v15

    .line 765
    const/16 v16, 0x1

    goto :goto_8e

    .line 771
    .end local v15    # "tmp":I
    :cond_a3
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 772
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_4e

    .line 773
    move v11, v15

    .line 774
    const/16 v17, 0x1

    goto :goto_4e

    .line 798
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_b3
    add-int/lit8 v3, v3, -0x1

    .line 799
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .line 803
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_b8
    if-eqz v13, :cond_fa

    .line 804
    if-eqz v16, :cond_be

    if-le v10, v3, :cond_c6

    :cond_be
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_da

    .line 806
    :cond_c6
    if-eqz p2, :cond_d6

    .line 816
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 818
    :cond_d6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 821
    :cond_da
    if-eqz v17, :cond_de

    if-le v11, v4, :cond_e6

    :cond_de
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_147

    .line 823
    :cond_e6
    if-eqz p2, :cond_f6

    .line 824
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 826
    :cond_f6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 839
    :cond_fa
    if-nez v5, :cond_11d

    const/4 v12, 0x1

    .line 840
    .local v12, "maybeNamp":Z
    :goto_fd
    if-lt v3, v10, :cond_123

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 842
    .restart local v8    # "chA":C
    invoke-static {v8}, isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_11a

    .line 843
    if-eqz v12, :cond_11f

    invoke-static {v8}, tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11f

    .line 844
    const/4 v12, 0x0

    .line 849
    :cond_11a
    add-int/lit8 v3, v3, -0x1

    .line 850
    goto :goto_fd

    .line 839
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_11d
    const/4 v12, 0x0

    goto :goto_fd

    .line 846
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_11f
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 851
    .end local v8    # "chA":C
    :cond_123
    :goto_123
    if-lt v4, v11, :cond_147

    .line 852
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 853
    .restart local v9    # "chB":C
    invoke-static {v9}, isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_140

    .line 854
    if-eqz v12, :cond_143

    invoke-static {v9}, tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_143

    .line 855
    const/4 v12, 0x0

    .line 860
    :cond_140
    add-int/lit8 v4, v4, -0x1

    .line 861
    goto :goto_123

    .line 857
    :cond_143
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 864
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_147
    const/16 v18, 0x1

    goto/16 :goto_c
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {p0}, convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 2791
    if-nez p0, :cond_3

    .line 2807
    .end local p0    # "input":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p0

    .line 2794
    .restart local p0    # "input":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2795
    .local v2, "len":I
    if-eqz v2, :cond_2

    .line 2799
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2801
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1e

    .line 2802
    aget-char v0, v3, v1

    .line 2804
    .local v0, "c":C
    sget-object v4, KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2801
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2807
    .end local v0    # "c":C
    :cond_1e
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_2
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p0, :cond_4

    .line 424
    const/4 v4, 0x0

    .line 439
    :goto_3
    return-object v4

    .line 426
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 427
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 429
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_2b

    .line 430
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 432
    .local v0, "c":C
    invoke-static {v0}, isPause(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 433
    const/16 v0, 0x2c

    .line 437
    :cond_1c
    :goto_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 434
    :cond_22
    invoke-static {v0}, isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 435
    const/16 v0, 0x3b

    goto :goto_1c

    .line 439
    .end local v0    # "c":C
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .registers 23
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fixedNetwork"    # I

    .prologue
    .line 5695
    invoke-static/range {p0 .. p0}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5696
    .local v16, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    .line 5698
    .local v15, "numberLength":I
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5699
    .local v3, "c":C
    invoke-static {v3}, isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_1a

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_3f

    .line 5700
    :cond_1a
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Destination Number is OK "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    :try_start_34
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_123

    move-result v17

    if-nez v17, :cond_5a

    .line 5890
    .end local v16    # "phoneNumber":Ljava/lang/String;
    :goto_3e
    return-object v16

    .line 5702
    .restart local v16    # "phoneNumber":Ljava/lang/String;
    :cond_3f
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Destination Number might be email address"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 5712
    :cond_5a
    :try_start_5a
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5714
    .local v10, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v17, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    .line 5715
    .local v14, "numberBeginsWithOTAIDDPrefix":Z
    const-string v17, "011"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_113

    const/4 v13, 0x1

    .line 5716
    .local v13, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_72
    const/16 v17, 0x0

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5718
    .local v4, "debugNumber":Ljava/lang/String;
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Destination numberLength: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " otaCountryIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " number : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "**********"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    packed-switch p2, :pswitch_data_398

    .line 5747
    :goto_cd
    :pswitch_cd
    const/4 v6, 0x0

    .line 5749
    .local v6, "findIDDLen":I
    sget-boolean v17, isCDMARegistered:Z

    if-eqz v17, :cond_25d

    .line 5750
    sget-boolean v17, isNetRoaming:Z

    if-nez v17, :cond_161

    .line 5751
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Address Rule in VZW Network"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5752
    invoke-static {v3}, isISODigit(C)Z

    move-result v17

    if-eqz v17, :cond_157

    .line 5753
    if-eqz v13, :cond_157

    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_157

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_f7

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_157

    .line 5754
    :cond_f7
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_157

    .line 5755
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5756
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5757
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5715
    .end local v4    # "debugNumber":Ljava/lang/String;
    .end local v6    # "findIDDLen":I
    .end local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    :cond_113
    const/4 v13, 0x0

    goto/16 :goto_72

    .line 5729
    .restart local v4    # "debugNumber":Ljava/lang/String;
    .restart local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    :pswitch_116
    const/16 v17, 0x1

    sput-boolean v17, isCDMARegistered:Z

    .line 5730
    const/16 v17, 0x0

    sput-boolean v17, isGSMRegistered:Z

    .line 5731
    const/16 v17, 0x0

    sput-boolean v17, isNetRoaming:Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_122} :catch_123

    goto :goto_cd

    .line 5888
    .end local v4    # "debugNumber":Ljava/lang/String;
    .end local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v14    # "numberBeginsWithOTAIDDPrefix":Z
    :catch_123
    move-exception v5

    .line 5889
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot convert: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 5734
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "debugNumber":Ljava/lang/String;
    .restart local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .restart local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v14    # "numberBeginsWithOTAIDDPrefix":Z
    :pswitch_140
    const/16 v17, 0x1

    :try_start_142
    sput-boolean v17, isCDMARegistered:Z

    .line 5735
    const/16 v17, 0x0

    sput-boolean v17, isGSMRegistered:Z

    .line 5736
    const/16 v17, 0x1

    sput-boolean v17, isNetRoaming:Z

    goto :goto_cd

    .line 5739
    :pswitch_14d
    const/16 v17, 0x0

    sput-boolean v17, isCDMARegistered:Z

    .line 5740
    const/16 v17, 0x1

    sput-boolean v17, isGSMRegistered:Z

    goto/16 :goto_cd

    .line 5762
    .restart local v6    # "findIDDLen":I
    :cond_157
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5764
    :cond_161
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Address Rule in CDMA Internatinal Roaming"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    invoke-static {v3}, isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_174

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_25d

    .line 5766
    :cond_174
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_25d

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_186

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_25d

    .line 5767
    :cond_186
    add-int/lit8 v17, v15, -0xb

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5768
    .local v9, "nanpStr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "iddPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5770
    .local v12, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v14, :cond_1a0

    .line 5771
    sget-object v7, otaCountryIDDPrefix:Ljava/lang/String;

    .line 5772
    sget-object v17, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5775
    :cond_1a0
    if-eqz v14, :cond_1f6

    .line 5776
    sget-object v17, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    .line 5777
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5779
    .local v11, "newStr":Ljava/lang/String;
    invoke-static {v9}, isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, v6, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c9

    .line 5780
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5790
    :goto_1c3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5781
    :cond_1c9
    move-object/from16 v0, p1

    invoke-static {v12, v0}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1e9

    .line 5782
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Found Country Code after IDD"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5783
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5784
    const/16 v17, 0x0

    const-string v18, "011"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c3

    .line 5786
    :cond_1e9
    const-string v17, "PhoneNumberUtils"

    const-string v18, "No Condition"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c3

    .line 5793
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_1f6
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_241

    sget-boolean v17, isNBPCDSupported:Z

    if-nez v17, :cond_241

    .line 5794
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5796
    .restart local v11    # "newStr":Ljava/lang/String;
    invoke-static {v11}, isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_221

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_221

    .line 5797
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5806
    :goto_21b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5798
    :cond_221
    move-object/from16 v0, p1

    invoke-static {v11, v0}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_234

    .line 5799
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5800
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21b

    .line 5802
    :cond_234
    const-string v17, "PhoneNumberUtils"

    const-string v18, "1NANP is not matched"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21b

    .line 5809
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_241
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_25d

    .line 5810
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5811
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5812
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5819
    .end local v7    # "iddPrefix":Ljava/lang/String;
    .end local v9    # "nanpStr":Ljava/lang/String;
    .end local v12    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_25d
    sget-boolean v17, isGSMRegistered:Z

    if-eqz v17, :cond_38f

    .line 5820
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Address Rule in GSM/UMTS"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    invoke-static {v3}, isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_274

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_38f

    .line 5823
    :cond_274
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_38f

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_286

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_38f

    .line 5824
    :cond_286
    add-int/lit8 v17, v15, -0xb

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5825
    .restart local v9    # "nanpStr":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "iddPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5828
    .restart local v12    # "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v14, :cond_2a0

    .line 5829
    sget-object v7, otaCountryIDDPrefix:Ljava/lang/String;

    .line 5830
    sget-object v17, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5833
    :cond_2a0
    if-eqz v14, :cond_316

    .line 5836
    sget-object v17, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    .line 5837
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5839
    .restart local v11    # "newStr":Ljava/lang/String;
    invoke-static {v11}, isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2de

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, v6, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2de

    .line 5840
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5841
    const/16 v17, 0x0

    sget-object v18, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const-string v19, "+"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5842
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5843
    :cond_2de
    move-object/from16 v0, p1

    invoke-static {v12, v0}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_304

    .line 5844
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5845
    const/16 v17, 0x0

    sget-object v18, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const-string v19, "011"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5846
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5848
    :cond_304
    const-string v17, "PhoneNumberUtils"

    const-string v18, "No condition is matched in IDD"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5849
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5852
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5855
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_316
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_373

    .line 5856
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 5857
    .local v8, "iddStr":Ljava/lang/String;
    invoke-static {v9}, isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_33f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_33f

    .line 5859
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5872
    :goto_339
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5860
    :cond_33f
    move-object/from16 v0, p1

    invoke-static {v8, v0}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_358

    .line 5862
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5863
    .restart local v11    # "newStr":Ljava/lang/String;
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5864
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_339

    .line 5865
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_358
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_366

    .line 5866
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_339

    .line 5868
    :cond_366
    const-string v17, "PhoneNumberUtils"

    const-string v18, "No condition is matched in \'+\'"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5869
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_339

    .line 5876
    .end local v8    # "iddStr":Ljava/lang/String;
    :cond_373
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_38f

    .line 5877
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5878
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5879
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3e

    .line 5885
    .end local v7    # "iddPrefix":Ljava/lang/String;
    .end local v9    # "nanpStr":Ljava/lang/String;
    .end local v12    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_38f
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Can\'t find any match in this number"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_396
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_396} :catch_123

    goto/16 :goto_3e

    .line 5725
    :pswitch_data_398
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_116
        :pswitch_140
        :pswitch_14d
    .end packed-switch
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .registers 7
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3137
    if-nez p0, :cond_4

    .line 3164
    :goto_3
    return-object v3

    .line 3142
    :cond_4
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 3143
    .local v2, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 3148
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_a .. :try_end_d} :catch_3e

    move-result-object v1

    .line 3153
    :goto_e
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 3154
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v1, :cond_21

    .line 3157
    invoke-static {p0}, splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 3164
    :goto_1c
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    goto :goto_3

    .line 3159
    :cond_21
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 3160
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 3162
    :cond_32
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_1c

    .line 3149
    .end local v0    # "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    :catch_3e
    move-exception v3

    goto :goto_e
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 3075
    if-nez p0, :cond_4

    .line 3076
    const/4 v0, 0x0

    .line 3080
    :goto_3
    return-object v0

    .line 3078
    :cond_4
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 3079
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, addTtsSpan(Landroid/text/Spannable;II)V

    goto :goto_3
.end method

.method private static displayAssistedParams()V
    .registers 3

    .prologue
    .line 5355
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " refCountryName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryMCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryIDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryNDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryAreaCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryNationalNumberLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNANPCountry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isNANPCountry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNBPCDSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isNBPCDSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isGSMRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isGSMRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isCDMARegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isCDMARegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNetRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isNetRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numberLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, numberLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, otaCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryMCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryIDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryNDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOTANANPCountry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isOTANANPCountry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOTANBPCDSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isOTANBPCDSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5375
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 311
    if-nez p0, :cond_4

    .line 312
    const/4 v6, 0x0

    .line 337
    :goto_3
    return-object v6

    .line 315
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 316
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_55

    .line 319
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 321
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 322
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_23

    .line 323
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 324
    :cond_23
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_45

    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 328
    :cond_41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 330
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_45
    invoke-static {v0}, isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 331
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 332
    :cond_4f
    invoke-static {v0}, isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 337
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 350
    if-nez p0, :cond_4

    .line 351
    const/4 v5, 0x0

    .line 373
    :goto_3
    return-object v5

    .line 354
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 355
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 358
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 359
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 361
    if-eqz v1, :cond_1e

    .line 358
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 364
    :cond_1e
    const/4 v1, 0x1

    .line 366
    :cond_1f
    invoke-static {v0}, isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 367
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 368
    :cond_29
    invoke-static {v0}, isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 373
    .end local v0    # "c":C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 5900
    if-nez p1, :cond_4

    .line 5901
    const/4 v6, 0x0

    .line 5927
    :goto_3
    return-object v6

    .line 5904
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 5905
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5906
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 5907
    .local v1, "firstCharAdded":Z
    const/4 v2, 0x0

    .line 5908
    .local v2, "firstCharPause":Z
    const/4 v6, 0x0

    .line 5910
    .local v6, "tempstrng":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v4, :cond_2c

    .line 5911
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5913
    .local v0, "c":C
    invoke-static {v0}, isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 5914
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5910
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 5915
    :cond_23
    invoke-static {v0}, isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 5916
    if-nez v3, :cond_2c

    .line 5917
    const/4 v2, 0x1

    .line 5922
    .end local v0    # "c":C
    :cond_2c
    if-nez v2, :cond_37

    .line 5923
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5924
    invoke-static {p0, v6}, processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5925
    goto :goto_3

    :cond_37
    move-object v6, p1

    .line 5927
    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 492
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 508
    :goto_3
    return-object v5

    .line 495
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 499
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 500
    .local v3, "s":I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 502
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 503
    .local v0, "c":C
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 504
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 508
    .end local v0    # "c":C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 3512
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 3513
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3514
    .local v0, "c":C
    invoke-static {v0}, isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3518
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_11
    return v1

    .line 3512
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3518
    .end local v0    # "c":C
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1666
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .registers 14
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1725
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1728
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    .line 1729
    .local v4, "lengthRemovedDash":I
    const/16 v10, 0xc

    if-le v4, v10, :cond_1c

    .line 1731
    invoke-static {p0}, removeDashes(Landroid/text/Editable;)V

    .line 1959
    :cond_1b
    :goto_1b
    return-void

    .line 1733
    :cond_1c
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1b

    .line 1738
    const/4 v9, 0x5

    .line 1739
    .local v9, "state":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, "Digits":Ljava/lang/String;
    const/4 v10, 0x6

    if-ge v3, v10, :cond_47

    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 1742
    const/4 v6, 0x0

    .line 1743
    .local v6, "p":I
    :goto_30
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_1b

    .line 1744
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_44

    .line 1745
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_30

    .line 1747
    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 1754
    .end local v6    # "p":I
    :cond_47
    const/4 v6, 0x0

    .line 1755
    .restart local v6    # "p":I
    :goto_48
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_67

    .line 1756
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_5e

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_64

    .line 1757
    :cond_5e
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_48

    .line 1759
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 1762
    :cond_67
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-eq v3, v10, :cond_71

    .line 1763
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1765
    :cond_71
    const/4 v10, 0x1

    if-lt v3, v10, :cond_1b

    .line 1768
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_bc

    .line 1769
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1b

    .line 1770
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x32

    if-ne v10, v11, :cond_a4

    .line 1771
    const/4 v9, 0x6

    .line 1812
    :goto_8a
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1814
    .local v8, "saved":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 1815
    :goto_90
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_141

    .line 1816
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_13d

    .line 1817
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_90

    .line 1773
    .end local v8    # "saved":Ljava/lang/CharSequence;
    :cond_a4
    const/4 v10, 0x3

    if-lt v3, v10, :cond_1b

    .line 1774
    const-string v10, "0505"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b7

    const-string v10, "050-5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 1775
    :cond_b7
    const/16 v9, 0xe

    goto :goto_8a

    .line 1777
    :cond_ba
    const/4 v9, 0x7

    goto :goto_8a

    .line 1779
    :cond_bc
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-ne v10, v11, :cond_f4

    .line 1780
    const/4 v10, 0x4

    if-lt v3, v10, :cond_1b

    .line 1781
    const-string v10, "*23#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e0

    const-string v10, "*22#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e0

    const-string v10, "*31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 1782
    :cond_e0
    const/4 v10, 0x5

    if-gt v3, v10, :cond_1b

    .line 1783
    const/16 v9, 0xa

    goto :goto_8a

    .line 1784
    :cond_e6
    const-string v10, "*230#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1785
    const/4 v10, 0x6

    if-gt v3, v10, :cond_1b

    .line 1786
    const/16 v9, 0xb

    goto :goto_8a

    .line 1791
    :cond_f4
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_11f

    .line 1792
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1b

    .line 1793
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-ne v10, v11, :cond_110

    .line 1794
    const/4 v10, 0x3

    if-gt v3, v10, :cond_1b

    .line 1795
    const/16 v9, 0x8

    goto/16 :goto_8a

    .line 1796
    :cond_110
    const-string v10, "#31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1797
    const/4 v10, 0x5

    if-gt v3, v10, :cond_1b

    .line 1798
    const/16 v9, 0xa

    goto/16 :goto_8a

    .line 1803
    :cond_11f
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_133

    .line 1804
    const/4 v10, 0x6

    if-lt v3, v10, :cond_1b

    const/16 v10, 0xe

    if-gt v3, v10, :cond_1b

    .line 1805
    const/16 v9, 0x9

    goto/16 :goto_8a

    .line 1807
    :cond_133
    const/4 v10, 0x5

    if-lt v3, v10, :cond_1b

    const/16 v10, 0xe

    if-gt v3, v10, :cond_1b

    .line 1808
    const/4 v9, 0x5

    goto/16 :goto_8a

    .line 1819
    .restart local v8    # "saved":Ljava/lang/CharSequence;
    :cond_13d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_90

    .line 1823
    :cond_141
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1825
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3003003000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_159

    .line 1826
    const/4 v10, 0x0

    const-string v11, "300-300-3000"

    invoke-interface {p0, v10, v3, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1b

    .line 1833
    :cond_159
    const/4 v10, 0x2

    new-array v1, v10, [I

    .line 1834
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1837
    .local v5, "numDashes":I
    packed-switch v9, :pswitch_data_268

    .line 1946
    :pswitch_160
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1b

    .line 1839
    :pswitch_166
    const/4 v10, 0x3

    if-gt v3, v10, :cond_185

    .line 1840
    const/4 v5, 0x0

    .line 1951
    :cond_16a
    :goto_16a
    if-eqz v5, :cond_1b

    .line 1952
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16d
    if-ge v2, v5, :cond_1b

    .line 1953
    aget v7, v1, v2

    .line 1954
    .local v7, "pos":I
    add-int v10, v7, v2

    if-ltz v10, :cond_182

    add-int v10, v7, v2

    if-gt v10, v3, :cond_182

    .line 1955
    add-int v10, v7, v2

    add-int v11, v7, v2

    const-string v12, "-"

    invoke-interface {p0, v10, v11, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1952
    :cond_182
    add-int/lit8 v2, v2, 0x1

    goto :goto_16d

    .line 1842
    .end local v2    # "i":I
    .end local v7    # "pos":I
    :cond_185
    const/4 v10, 0x7

    if-gt v3, v10, :cond_18e

    .line 1843
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1844
    const/4 v5, 0x1

    .line 1845
    goto :goto_16a

    .line 1846
    :cond_18e
    const/4 v10, 0x7

    if-le v3, v10, :cond_1a0

    const/16 v10, 0xa

    if-gt v3, v10, :cond_1a0

    .line 1847
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1848
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1849
    const/4 v5, 0x2

    .line 1850
    goto :goto_16a

    .line 1851
    :cond_1a0
    const/16 v10, 0xa

    if-le v3, v10, :cond_16a

    .line 1852
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1853
    const/4 v10, 0x1

    const/4 v11, 0x7

    aput v11, v1, v10

    .line 1854
    const/4 v5, 0x2

    goto :goto_16a

    .line 1858
    :pswitch_1ae
    const/4 v10, 0x4

    if-gt v3, v10, :cond_1b3

    .line 1859
    const/4 v5, 0x0

    .line 1860
    goto :goto_16a

    .line 1861
    :cond_1b3
    const/16 v10, 0x8

    if-gt v3, v10, :cond_1bd

    .line 1862
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1863
    const/4 v5, 0x1

    .line 1864
    goto :goto_16a

    .line 1865
    :cond_1bd
    const/16 v10, 0x8

    if-le v3, v10, :cond_1d0

    const/16 v10, 0xb

    if-gt v3, v10, :cond_1d0

    .line 1866
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1867
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1868
    const/4 v5, 0x2

    .line 1869
    goto :goto_16a

    .line 1870
    :cond_1d0
    const/16 v10, 0xb

    if-le v3, v10, :cond_16a

    .line 1871
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1872
    const/4 v10, 0x1

    const/16 v11, 0x8

    aput v11, v1, v10

    .line 1873
    const/4 v5, 0x2

    goto :goto_16a

    .line 1877
    :pswitch_1df
    const/4 v10, 0x2

    if-gt v3, v10, :cond_1e4

    .line 1878
    const/4 v5, 0x0

    .line 1879
    goto :goto_16a

    .line 1880
    :cond_1e4
    const/4 v10, 0x6

    if-gt v3, v10, :cond_1ee

    .line 1881
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1882
    const/4 v5, 0x1

    .line 1883
    goto/16 :goto_16a

    .line 1884
    :cond_1ee
    const/4 v10, 0x6

    if-le v3, v10, :cond_201

    const/16 v10, 0x9

    if-gt v3, v10, :cond_201

    .line 1885
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1886
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1887
    const/4 v5, 0x2

    .line 1888
    goto/16 :goto_16a

    .line 1889
    :cond_201
    const/16 v10, 0x9

    if-le v3, v10, :cond_16a

    .line 1890
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1891
    const/4 v10, 0x1

    const/4 v11, 0x6

    aput v11, v1, v10

    .line 1892
    const/4 v5, 0x2

    goto/16 :goto_16a

    .line 1896
    :pswitch_210
    const/4 v10, 0x2

    if-gt v3, v10, :cond_216

    .line 1897
    const/4 v5, 0x0

    goto/16 :goto_16a

    .line 1899
    :cond_216
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1900
    const/4 v5, 0x1

    .line 1902
    goto/16 :goto_16a

    .line 1904
    :pswitch_21d
    const/4 v10, 0x4

    if-gt v3, v10, :cond_223

    .line 1905
    const/4 v5, 0x0

    goto/16 :goto_16a

    .line 1907
    :cond_223
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1908
    const/4 v5, 0x1

    .line 1910
    goto/16 :goto_16a

    .line 1912
    :pswitch_22a
    const/4 v10, 0x5

    if-gt v3, v10, :cond_230

    .line 1913
    const/4 v5, 0x0

    goto/16 :goto_16a

    .line 1915
    :cond_230
    const/4 v10, 0x0

    const/4 v11, 0x5

    aput v11, v1, v10

    .line 1916
    const/4 v5, 0x1

    .line 1918
    goto/16 :goto_16a

    .line 1920
    :pswitch_237
    const/16 v10, 0x8

    if-gt v3, v10, :cond_243

    .line 1921
    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1922
    const/4 v5, 0x1

    .line 1923
    goto/16 :goto_16a

    .line 1924
    :cond_243
    const/16 v10, 0x8

    if-le v3, v10, :cond_16a

    .line 1925
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1926
    const/4 v5, 0x1

    goto/16 :goto_16a

    .line 1930
    :pswitch_24e
    const/4 v10, 0x3

    if-gt v3, v10, :cond_254

    .line 1931
    const/4 v5, 0x0

    .line 1932
    goto/16 :goto_16a

    .line 1934
    :cond_254
    const/4 v10, 0x7

    if-gt v3, v10, :cond_25e

    .line 1935
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1936
    const/4 v5, 0x1

    .line 1937
    goto/16 :goto_16a

    .line 1938
    :cond_25e
    const/4 v10, 0x7

    if-le v3, v10, :cond_16a

    .line 1939
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1940
    const/4 v5, 0x1

    goto/16 :goto_16a

    .line 1837
    :pswitch_data_268
    .packed-switch 0x5
        :pswitch_24e
        :pswitch_1df
        :pswitch_166
        :pswitch_210
        :pswitch_237
        :pswitch_21d
        :pswitch_22a
        :pswitch_160
        :pswitch_160
        :pswitch_1ae
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 16
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1549
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1550
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_10

    .line 1644
    :cond_f
    :goto_f
    return-void

    .line 1553
    :cond_10
    const/4 v11, 0x5

    if-le v4, v11, :cond_f

    .line 1558
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1561
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, removeDashes(Landroid/text/Editable;)V

    .line 1562
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1567
    new-array v1, v13, [I

    .line 1568
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1570
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1571
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1572
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_25
    if-ge v2, v4, :cond_61

    .line 1573
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1574
    .local v0, "c":C
    packed-switch v0, :pswitch_data_94

    .line 1618
    :cond_2e
    :pswitch_2e
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_f

    .line 1576
    :pswitch_32
    if-eqz v7, :cond_36

    if-ne v10, v14, :cond_3c

    .line 1577
    :cond_36
    const/4 v10, 0x3

    move v5, v6

    .line 1572
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_38
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_25

    .line 1590
    :cond_3c
    :pswitch_3c
    if-ne v10, v14, :cond_42

    .line 1592
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_f

    .line 1594
    :cond_42
    if-ne v10, v13, :cond_4c

    .line 1596
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1601
    :goto_48
    const/4 v10, 0x1

    .line 1602
    add-int/lit8 v7, v7, 0x1

    .line 1603
    goto :goto_38

    .line 1597
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_4c
    const/4 v11, 0x4

    if-eq v10, v11, :cond_91

    if-eq v7, v13, :cond_54

    const/4 v11, 0x6

    if-ne v7, v11, :cond_91

    .line 1599
    :cond_54
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_48

    .line 1606
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_59
    const/4 v10, 0x4

    move v5, v6

    .line 1607
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_38

    .line 1610
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_5c
    if-nez v2, :cond_2e

    .line 1612
    const/4 v10, 0x2

    move v5, v6

    .line 1613
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_38

    .line 1623
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_61
    const/4 v11, 0x7

    if-ne v7, v11, :cond_8f

    .line 1625
    add-int/lit8 v5, v6, -0x1

    .line 1629
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_66
    const/4 v2, 0x0

    :goto_67
    if-ge v2, v5, :cond_77

    .line 1630
    aget v8, v1, v2

    .line 1631
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1629
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1635
    .end local v8    # "pos":I
    :cond_77
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1636
    .local v3, "len":I
    :goto_7b
    if-lez v3, :cond_f

    .line 1637
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_f

    .line 1638
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1639
    add-int/lit8 v3, v3, -0x1

    goto :goto_7b

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8f
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_66

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_91
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_48

    .line 1574
    nop

    :pswitch_data_94
    .packed-switch 0x2b
        :pswitch_5c
        :pswitch_2e
        :pswitch_59
        :pswitch_2e
        :pswitch_2e
        :pswitch_3c
        :pswitch_32
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1431
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1432
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, formatNumber(Landroid/text/Editable;I)V

    .line 1433
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1450
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1451
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, formatNumber(Landroid/text/Editable;I)V

    .line 1452
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2041
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    move-object v1, p0

    .line 2077
    :goto_11
    return-object v1

    .line 2045
    :cond_12
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 2046
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 2048
    .local v1, "result":Ljava/lang/String;
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_3f
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 2053
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v3

    invoke-static {p0, v3}, formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 2056
    :cond_54
    :try_start_54
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2062
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string v3, "KR"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    const-string v4, "KR"

    invoke-virtual {v2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_7b

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_7b

    .line 2066
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 2068
    :cond_7b
    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_b1

    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "-GLB-USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_93

    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "-CDM-USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b1

    :cond_93
    const-string v3, "US"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 2070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatNumber - ISO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2072
    :cond_b1
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b4
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_54 .. :try_end_b4} :catch_b7

    move-result-object v1

    goto/16 :goto_11

    .line 2074
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_b7
    move-exception v3

    goto/16 :goto_11
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2101
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 2102
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, isDialable(C)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2124
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_11
    return-object p0

    .line 2101
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2106
    :cond_15
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 2108
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4b

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4b

    .line 2113
    :try_start_2b
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2114
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-static {p0}, normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_47
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2b .. :try_end_47} :catch_55

    move-result v6

    if-gtz v6, :cond_4b

    .line 2118
    move-object p2, v3

    .line 2123
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_4b
    :goto_4b
    invoke-static {p0, p2}, formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2124
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_53

    .end local v4    # "result":Ljava/lang/String;
    :goto_51
    move-object p0, v4

    goto :goto_11

    .restart local v4    # "result":Ljava/lang/String;
    :cond_53
    move-object v4, p0

    goto :goto_51

    .line 2120
    .end local v4    # "result":Ljava/lang/String;
    :catch_55
    move-exception v6

    goto :goto_4b
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 10
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x31

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1483
    move v0, p1

    .line 1485
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1e

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1e

    .line 1486
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_22

    .line 1487
    const/4 v0, 0x1

    .line 1503
    :cond_1e
    :goto_1e
    sparse-switch v0, :sswitch_data_b2

    .line 1524
    :cond_21
    :goto_21
    return-void

    .line 1488
    :cond_22
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_36

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_36

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_36

    .line 1490
    const/4 v0, 0x2

    goto :goto_1e

    .line 1492
    :cond_36
    const-string v1, "SKT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "KTT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "KOO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :cond_5e
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_75

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_75

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_75

    .line 1497
    const/16 v0, 0x52

    goto :goto_1e

    .line 1499
    :cond_75
    const/4 v0, 0x0

    goto :goto_1e

    .line 1505
    :sswitch_77
    invoke-static {p0}, formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_21

    .line 1508
    :sswitch_7b
    invoke-static {p0}, formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_21

    .line 1512
    :sswitch_7f
    const-string v1, "SKT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    const-string v1, "KTT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    const-string v1, "KOO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1516
    :cond_a7
    invoke-static {p0}, formatKRnpNumber(Landroid/text/Editable;)V

    goto/16 :goto_21

    .line 1521
    :sswitch_ac
    invoke-static {p0}, removeDashes(Landroid/text/Editable;)V

    goto/16 :goto_21

    .line 1503
    nop

    :sswitch_data_b2
    .sparse-switch
        0x0 -> :sswitch_ac
        0x1 -> :sswitch_77
        0x2 -> :sswitch_7b
        0x52 -> :sswitch_7f
    .end sparse-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 6
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 2015
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2017
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_4
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2018
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2019
    invoke-virtual {v1, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_11
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object v2

    .line 2023
    .end local v0    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_12
    return-object v2

    .line 2021
    :catch_13
    move-exception v2

    .line 2023
    :cond_14
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1985
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1996
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .registers 4
    .param p0, "useNanp"    # Z

    .prologue
    .line 3273
    const/4 v0, 0x0

    .line 3274
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 3275
    const-string v0, "011"

    .line 3280
    :goto_5
    return-object v0

    .line 3278
    :cond_6
    const-string v1, "gsm.operator.idpstring"

    const-string v2, "+"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4669
    const-string v2, ""

    .line 4671
    .local v2, "idd":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4672
    .local v1, "enableAssistedDialing":I
    if-ne v1, v3, :cond_26

    :goto_f
    invoke-static {p0, v3}, getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 4674
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4675
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4678
    :cond_20
    if-eqz v0, :cond_25

    .line 4679
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4683
    :cond_25
    return-object v2

    .line 4672
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_26
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public static getCurrentOtaCountryNanp(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4690
    const-string v2, ""

    .line 4692
    .local v2, "nanp":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4693
    .local v1, "enableAssistedDialing":I
    if-ne v1, v3, :cond_26

    :goto_f
    invoke-static {p0, v3}, getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 4695
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4696
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4699
    :cond_20
    if-eqz v0, :cond_25

    .line 4700
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4704
    :cond_25
    return-object v2

    .line 4693
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_26
    const/4 v3, 0x0

    goto :goto_f
.end method

.method private static getDefaultVoiceSubId()I
    .registers 1

    .prologue
    .line 3856
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method public static getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;
    .registers 25
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4049
    const-string v16, ""

    .line 4051
    .local v16, "numbers":Ljava/lang/String;
    if-nez p1, :cond_6

    const/4 v3, 0x0

    .line 4208
    :cond_5
    :goto_5
    return-object v3

    .line 4054
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_e

    const/4 v3, 0x0

    goto :goto_5

    .line 4055
    :cond_e
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_22

    const/4 v3, 0x0

    goto :goto_5

    .line 4057
    :cond_22
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v19

    .line 4059
    .local v19, "slotId":I
    if-gtz v19, :cond_212

    const-string/jumbo v5, "ril.ecclist_net0"

    .line 4062
    .local v5, "ecclistNetProp":Ljava/lang/String;
    :goto_2b
    const-string/jumbo v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4078
    .local v17, "salesCode":Ljava/lang/String;
    if-gtz v19, :cond_36

    const/16 v19, 0x0

    .line 4081
    :cond_36
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getEmergencyServiceCategory slodId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, log(Ljava/lang/String;)V

    .line 4083
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v21

    sput v21, phoneType:I

    .line 4084
    const-string v21, "gsm.sim.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4086
    .local v18, "simOperator":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_RIL_ConvertPlusPrefixNumberToMnoCode"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_92

    .line 4088
    const-string v21, "184"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_88

    const-string v21, "186"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_92

    .line 4089
    :cond_88
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4095
    :cond_92
    sget-object v21, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v21, :cond_265

    sget-object v21, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v22, "-GLB-USA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_265

    .line 4096
    const-string/jumbo v21, "ro.ril.ecclist"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4097
    .local v6, "ecclist_cdma":Ljava/lang/String;
    const/4 v11, 0x0

    .line 4098
    .local v11, "i":I
    :goto_a8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ril.ecclist"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4099
    .local v13, "key":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4100
    .local v15, "n":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_22c

    .line 4104
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_f5

    .line 4105
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4157
    .end local v6    # "ecclist_cdma":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "n":Ljava/lang/String;
    :cond_f5
    :goto_f5
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4158
    .local v7, "ecclist_net":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_11c

    .line 4159
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4162
    :cond_11c
    const-string/jumbo v21, "persist.radio.test_emer_num"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4163
    .local v9, "ecclist_test":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_146

    .line 4164
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4173
    :cond_146
    sget-object v21, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v21, :cond_1b7

    sget-object v21, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v22, "-GLB-USA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-gez v21, :cond_15e

    sget-object v21, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v22, "-CDM-USA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_1b7

    .line 4175
    :cond_15e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ril.ecclist"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4176
    .local v8, "ecclist_pbm":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_19d

    .line 4177
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4179
    :cond_19d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ECC List: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, log(Ljava/lang/String;)V

    .line 4182
    .end local v8    # "ecclist_pbm":Ljava/lang/String;
    :cond_1b7
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_481

    .line 4185
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v14, v2

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1c9
    if-ge v12, v14, :cond_47e

    aget-object v10, v2, v12

    .line 4186
    .local v10, "emergencyNum":Ljava/lang/String;
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 4187
    .local v20, "splitStr":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v4, v20, v21

    .line 4188
    .local v4, "eccNum":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_456

    const/16 v21, 0x1

    aget-object v3, v20, v21

    .line 4189
    .local v3, "eccCat":Ljava/lang/String;
    :goto_1ea
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_47a

    .line 4190
    const-string v21, "46605"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 4191
    const-string v21, "119"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_45a

    .line 4192
    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 4059
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "eccCat":Ljava/lang/String;
    .end local v4    # "eccNum":Ljava/lang/String;
    .end local v5    # "ecclistNetProp":Ljava/lang/String;
    .end local v7    # "ecclist_net":Ljava/lang/String;
    .end local v9    # "ecclist_test":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "salesCode":Ljava/lang/String;
    .end local v18    # "simOperator":Ljava/lang/String;
    .end local v20    # "splitStr":[Ljava/lang/String;
    :cond_212
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ril.ecclist_net"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2b

    .line 4101
    .restart local v5    # "ecclistNetProp":Ljava/lang/String;
    .restart local v6    # "ecclist_cdma":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v15    # "n":Ljava/lang/String;
    .restart local v17    # "salesCode":Ljava/lang/String;
    .restart local v18    # "simOperator":Ljava/lang/String;
    :cond_22c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, log(Ljava/lang/String;)V

    .line 4102
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4097
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a8

    .line 4111
    .end local v6    # "ecclist_cdma":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "n":Ljava/lang/String;
    :cond_265
    const-string v21, "CTC"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_289

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_289

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3e0

    :cond_289
    sget v21, phoneType:I

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3e0

    .line 4115
    sget v21, phoneType:I

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_369

    .line 4116
    const-string/jumbo v21, "ro.ril.ecclist"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4117
    .restart local v6    # "ecclist_cdma":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ":: ecclist for UIM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, log(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2ed

    .line 4120
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4123
    :cond_2ed
    const-string v21, "110"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "112"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "119"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "120"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "911"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "999"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "122"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "000"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "118"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_365

    const-string v21, "08"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f5

    .line 4127
    :cond_365
    const-string v3, ""

    goto/16 :goto_5

    .line 4130
    .end local v6    # "ecclist_cdma":Ljava/lang/String;
    :cond_369
    const/4 v11, 0x0

    .line 4131
    .restart local v11    # "i":I
    :goto_36a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ril.ecclist"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4132
    .restart local v13    # "key":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4134
    .restart local v15    # "n":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_f5

    .line 4137
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ":: ecclist for SIM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ::"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, log(Ljava/lang/String;)V

    .line 4139
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4130
    add-int/lit8 v11, v11, 0x1

    goto :goto_36a

    .line 4143
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "n":Ljava/lang/String;
    :cond_3e0
    sget v21, phoneType:I

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3f3

    .line 4144
    const-string/jumbo v21, "ro.ril.ecclist"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_f5

    .line 4146
    :cond_3f3
    const/4 v11, 0x0

    .line 4147
    .restart local v11    # "i":I
    :goto_3f4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ril.ecclist"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4148
    .restart local v13    # "key":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4149
    .restart local v15    # "n":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_f5

    .line 4150
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, log(Ljava/lang/String;)V

    .line 4151
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4146
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f4

    .line 4188
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "n":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "eccNum":Ljava/lang/String;
    .restart local v7    # "ecclist_net":Ljava/lang/String;
    .restart local v9    # "ecclist_test":Ljava/lang/String;
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    .restart local v20    # "splitStr":[Ljava/lang/String;
    :cond_456
    const-string v3, ""

    goto/16 :goto_1ea

    .line 4193
    .restart local v3    # "eccCat":Ljava/lang/String;
    :cond_45a
    const-string v21, "110"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_472

    const-string v21, "112"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 4194
    :cond_472
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 4185
    :cond_47a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1c9

    .line 4201
    .end local v3    # "eccCat":Ljava/lang/String;
    .end local v4    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v20    # "splitStr":[Ljava/lang/String;
    :cond_47e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 4205
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    :cond_481
    const-string v21, "112"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_499

    const-string v21, "911"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_49d

    .line 4206
    :cond_499
    const-string v3, ""

    goto/16 :goto_5

    .line 4208
    :cond_49d
    const/4 v3, 0x0

    goto/16 :goto_5
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 4042
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;
    .registers 33
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4227
    const-string v17, "112,911,999,000,08,110,118,119,122,113,125,111,117"

    .line 4228
    .local v17, "korDefaultECCList":Ljava/lang/String;
    const-string v23, "EUR"

    .line 4229
    .local v23, "salesCode":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v27

    .line 4231
    .local v27, "slotId":I
    if-nez p1, :cond_d

    const/16 v29, 0x0

    .line 4658
    :goto_c
    return-object v29

    .line 4235
    :cond_d
    invoke-static/range {p1 .. p1}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4243
    .local v5, "dialNumber":Ljava/lang/String;
    const-string v21, ""

    .line 4245
    .local v21, "numbers":Ljava/lang/String;
    const/4 v11, 0x0

    .line 4246
    .local v11, "i":I
    :goto_14
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ril.ecclist"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4247
    .local v16, "key":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4248
    .local v19, "n":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_c6

    .line 4261
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_105

    .line 4262
    move-object/from16 v21, v17

    .line 4269
    :goto_46
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_867

    .line 4272
    const-string/jumbo v29, "ril.currentplmn"

    const-string v30, "domestic"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4273
    .local v4, "currPlmn":Ljava/lang/String;
    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_70

    const-string/jumbo v29, "unknown"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_70

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_126

    :cond_70
    const/4 v14, 0x1

    .line 4278
    .local v14, "isDomestic":Z
    :goto_71
    const-string v29, "SKT"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_259

    .line 4306
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_8b
    move/from16 v0, v18

    if-ge v12, v0, :cond_867

    aget-object v10, v2, v12

    .line 4307
    .local v10, "emergencyNum":Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 4308
    .local v28, "splitStr":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v9, v28, v29

    .line 4309
    .local v9, "eccNum":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_129

    const/16 v29, 0x1

    aget-object v8, v28, v29

    .line 4313
    .local v8, "eccCat":Ljava/lang/String;
    :goto_ae
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_255

    .line 4314
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12c

    .line 4317
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4249
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currPlmn":Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isDomestic":Z
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_c6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, log(Ljava/lang/String;)V

    .line 4250
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4245
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_14

    .line 4264
    :cond_105
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_46

    .line 4273
    .restart local v4    # "currPlmn":Ljava/lang/String;
    :cond_126
    const/4 v14, 0x0

    goto/16 :goto_71

    .line 4309
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v9    # "eccNum":Ljava/lang/String;
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v14    # "isDomestic":Z
    .restart local v18    # "len$":I
    .restart local v28    # "splitStr":[Ljava/lang/String;
    :cond_129
    const-string v8, ""

    goto :goto_ae

    .line 4318
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_12c
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_159

    .line 4319
    const-string/jumbo v29, "ril.skt119Cat"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4321
    .local v7, "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_147

    move-object/from16 v29, v7

    .line 4322
    goto/16 :goto_c

    .line 4323
    :cond_147
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_151

    move-object/from16 v29, v8

    .line 4324
    goto/16 :goto_c

    .line 4326
    :cond_151
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4328
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_159
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16b

    .line 4329
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4330
    :cond_16b
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17d

    .line 4331
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4332
    :cond_17d
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_199

    .line 4333
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_195

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_195
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4334
    :cond_199
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b5

    .line 4335
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_1b1

    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_1b1
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4336
    :cond_1b5
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d1

    .line 4337
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_1cd

    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_1cd
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4338
    :cond_1d1
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f1

    .line 4339
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_1e9

    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_1e9
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4340
    :cond_1f1
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20d

    .line 4341
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_209

    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_209
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4342
    :cond_20d
    const-string v29, "127"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21b

    .line 4343
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4344
    :cond_21b
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_243

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_243

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_243

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_251

    .line 4348
    :cond_243
    if-nez v14, :cond_24d

    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_24d
    const/16 v29, 0x0

    goto/16 :goto_c

    :cond_251
    move-object/from16 v29, v8

    .line 4351
    goto/16 :goto_c

    .line 4306
    :cond_255
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8b

    .line 4355
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_259
    const-string v29, "KTT"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_39d

    .line 4370
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_273
    move/from16 v0, v18

    if-ge v12, v0, :cond_867

    aget-object v10, v2, v12

    .line 4371
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 4372
    .restart local v28    # "splitStr":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v9, v28, v29

    .line 4373
    .restart local v9    # "eccNum":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2a8

    const/16 v29, 0x1

    aget-object v8, v28, v29

    .line 4377
    .restart local v8    # "eccCat":Ljava/lang/String;
    :goto_296
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2ab

    .line 4378
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4373
    .end local v8    # "eccCat":Ljava/lang/String;
    :cond_2a8
    const-string v8, ""

    goto :goto_296

    .line 4379
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_2ab
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2bd

    .line 4380
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4381
    :cond_2bd
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2cf

    .line 4382
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4383
    :cond_2cf
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2e1

    .line 4384
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4385
    :cond_2e1
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2f3

    .line 4386
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4387
    :cond_2f3
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_305

    .line 4388
    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4389
    :cond_305
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_317

    .line 4390
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4391
    :cond_317
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_329

    .line 4392
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4393
    :cond_329
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_33b

    .line 4394
    const/16 v29, 0x7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4395
    :cond_33b
    const-string v29, "127"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_349

    .line 4396
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4397
    :cond_349
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_359

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_359

    move-object/from16 v29, v8

    .line 4399
    goto/16 :goto_c

    .line 4400
    :cond_359
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_36d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_36d

    .line 4402
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4403
    :cond_36d
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_395

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_395

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_395

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_399

    .line 4407
    :cond_395
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4370
    :cond_399
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_273

    .line 4412
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_39d
    const-string v29, "LGT"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6ca

    .line 4450
    const-string/jumbo v29, "ril.currentplmn"

    const-string v30, "domestic"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4454
    .local v3, "currIso":Ljava/lang/String;
    const-string v29, "gsm.sim.state"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4455
    .local v25, "simstate":Ljava/lang/String;
    const-string v29, "gsm.network.type"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4456
    .local v20, "network_type":Ljava/lang/String;
    const-string/jumbo v29, "ril.simtype"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 4457
    .local v26, "simtype":Ljava/lang/String;
    const/4 v13, 0x0

    .line 4458
    .local v13, "isCdma":Z
    const/4 v15, 0x0

    .line 4459
    .local v15, "isLteOnly":Z
    const/16 v24, 0x0

    .line 4462
    .local v24, "serviceState":I
    :try_start_3cf
    const-string/jumbo v29, "phone"

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4463
    .local v22, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_3eb

    .line 4464
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_3df
    .catch Landroid/os/RemoteException; {:try_start_3cf .. :try_end_3df} :catch_4b7

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4b4

    const/4 v13, 0x1

    .line 4465
    :goto_3e9
    const/16 v24, 0x1

    .line 4472
    .end local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_3eb
    :goto_3eb
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v29

    const-string v30, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual/range {v29 .. v30}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_41a

    .line 4476
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isLteOnly is serviceState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, log(Ljava/lang/String;)V

    .line 4477
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_41a

    .line 4479
    const/4 v15, 0x1

    .line 4483
    :cond_41a
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isCdma = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, log(Ljava/lang/String;)V

    .line 4486
    if-eqz v13, :cond_4ca

    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4ca

    const-string v29, "3"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_456

    const-string v29, "18"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4ca

    .line 4487
    :cond_456
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "114"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4b0

    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4c6

    .line 4490
    :cond_4b0
    const-string v29, ""

    goto/16 :goto_c

    .line 4464
    .restart local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_4b4
    const/4 v13, 0x0

    goto/16 :goto_3e9

    .line 4467
    .end local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_4b7
    move-exception v6

    .line 4468
    .local v6, "e":Landroid/os/RemoteException;
    const-string v29, "PhoneNumberUtils"

    const-string/jumbo v30, "phone.getActivePhoneType() failed"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3eb

    .line 4492
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4c6
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4494
    :cond_4ca
    if-eqz v15, :cond_5ac

    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5ac

    const-string v29, "3"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4ee

    const-string v29, "18"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5ac

    .line 4495
    :cond_4ee
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isLteOnly emergency in domestic, dialNumber = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, log(Ljava/lang/String;)V

    .line 4496
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_518

    .line 4497
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4498
    :cond_518
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_52a

    .line 4499
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4500
    :cond_52a
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_53c

    .line 4501
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4502
    :cond_53c
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_54e

    .line 4503
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4504
    :cond_54e
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_560

    .line 4505
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4506
    :cond_560
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_572

    .line 4507
    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4508
    :cond_572
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_584

    .line 4509
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4510
    :cond_584
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_596

    .line 4511
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4512
    :cond_596
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5a8

    .line 4513
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4515
    :cond_5a8
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4517
    :cond_5ac
    const-string/jumbo v29, "oversea"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_614

    .line 4518
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5c9

    .line 4519
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4520
    :cond_5c9
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5db

    .line 4521
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4522
    :cond_5db
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5ed

    .line 4523
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4524
    :cond_5ed
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_610

    .line 4525
    const-string/jumbo v29, "ril.skt119Cat"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4527
    .restart local v7    # "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_608

    move-object/from16 v29, v7

    .line 4528
    goto/16 :goto_c

    .line 4530
    :cond_608
    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4533
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_610
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4536
    :cond_614
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_626

    .line 4537
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4538
    :cond_626
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_638

    .line 4539
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4540
    :cond_638
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_64a

    .line 4541
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4542
    :cond_64a
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_65c

    .line 4543
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4544
    :cond_65c
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_66e

    .line 4545
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4546
    :cond_66e
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_680

    .line 4547
    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4548
    :cond_680
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_692

    .line 4549
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4550
    :cond_692
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6a4

    .line 4551
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4552
    :cond_6a4
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6b6

    .line 4553
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4554
    :cond_6b6
    if-eqz v13, :cond_6c6

    const-string v29, "114"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6c6

    .line 4555
    const-string v29, ""

    goto/16 :goto_c

    .line 4557
    :cond_6c6
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4560
    .end local v3    # "currIso":Ljava/lang/String;
    .end local v13    # "isCdma":Z
    .end local v15    # "isLteOnly":Z
    .end local v20    # "network_type":Ljava/lang/String;
    .end local v24    # "serviceState":I
    .end local v25    # "simstate":Ljava/lang/String;
    .end local v26    # "simtype":Ljava/lang/String;
    :cond_6ca
    const-string v29, "ANY"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6ee

    const-string v29, "OPEN"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6ee

    const-string v29, "KOO"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_867

    .line 4588
    :cond_6ee
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_6fc
    move/from16 v0, v18

    if-ge v12, v0, :cond_867

    aget-object v10, v2, v12

    .line 4589
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 4590
    .restart local v28    # "splitStr":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v9, v28, v29

    .line 4591
    .restart local v9    # "eccNum":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_737

    const/16 v29, 0x1

    aget-object v8, v28, v29

    .line 4595
    .restart local v8    # "eccCat":Ljava/lang/String;
    :goto_71f
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_863

    .line 4596
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_73a

    .line 4599
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4591
    .end local v8    # "eccCat":Ljava/lang/String;
    :cond_737
    const-string v8, ""

    goto :goto_71f

    .line 4600
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_73a
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_767

    .line 4601
    const-string/jumbo v29, "ril.skt119Cat"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4603
    .restart local v7    # "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_755

    move-object/from16 v29, v7

    .line 4604
    goto/16 :goto_c

    .line 4605
    :cond_755
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_75f

    move-object/from16 v29, v8

    .line 4606
    goto/16 :goto_c

    .line 4608
    :cond_75f
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4610
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_767
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_779

    .line 4611
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4612
    :cond_779
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_78b

    .line 4613
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4614
    :cond_78b
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7a7

    .line 4615
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_7a3

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_7a3
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4616
    :cond_7a7
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7c3

    .line 4617
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_7bf

    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_7bf
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4618
    :cond_7c3
    const-string v29, "127"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7d1

    .line 4619
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4620
    :cond_7d1
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7ed

    .line 4621
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_7e9

    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_7e9
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4622
    :cond_7ed
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_809

    .line 4623
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_805

    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_805
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4624
    :cond_809
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_829

    .line 4625
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_821

    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_821
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 4626
    :cond_829
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_851

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_851

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_851

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_85f

    .line 4630
    :cond_851
    if-nez v14, :cond_85b

    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    :cond_85b
    const/16 v29, 0x0

    goto/16 :goto_c

    :cond_85f
    move-object/from16 v29, v8

    .line 4633
    goto/16 :goto_c

    .line 4588
    :cond_863
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6fc

    .line 4641
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currPlmn":Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isDomestic":Z
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_867
    const-string/jumbo v29, "ril.currentplmn"

    const-string v30, "domestic"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4644
    .restart local v3    # "currIso":Ljava/lang/String;
    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_88b

    const-string/jumbo v29, "unknown"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_88b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_8e3

    .line 4645
    :cond_88b
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8db

    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8df

    .line 4648
    :cond_8db
    const-string v29, ""

    goto/16 :goto_c

    .line 4650
    :cond_8df
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 4653
    :cond_8e3
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_93d

    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_941

    .line 4656
    :cond_93d
    const-string v29, ""

    goto/16 :goto_c

    .line 4658
    :cond_941
    const/16 v29, 0x0

    goto/16 :goto_c
.end method

.method public static getEmergencyServiceCategoryforkor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 4218
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1466
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 5
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 3293
    sget-object v2, NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 3295
    .local v1, "length":I
    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "KTT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "KOO"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_2b
    const-string v2, "KR"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    .line 3300
    const/16 v2, 0x52

    .line 3311
    :goto_35
    return v2

    .line 3303
    :cond_36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    if-ge v0, v1, :cond_48

    .line 3304
    sget-object v2, NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_45

    .line 3305
    const/4 v2, 0x1

    goto :goto_35

    .line 3303
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 3308
    :cond_48
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_52

    .line 3309
    const/4 v2, 0x2

    goto :goto_35

    .line 3311
    :cond_52
    const/4 v2, 0x0

    goto :goto_35
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 3866
    const/4 v3, 0x7

    .line 3867
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "mcc":I
    const/4 v5, 0x0

    .line 3868
    .local v5, "mnc":I
    const/4 v1, 0x0

    .line 3870
    .local v1, "SimOperator":Ljava/lang/String;
    const-string v7, "clidigits.preferences_name"

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3871
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "Clidigits"

    const/4 v8, 0x7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3872
    .local v0, "Clidigits":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-eq v7, v10, :cond_28

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-nez v7, :cond_29

    .line 3984
    .end local v0    # "Clidigits":I
    :cond_28
    :goto_28
    return v0

    .line 3893
    .restart local v0    # "Clidigits":I
    :cond_29
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 3896
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_28

    .line 3897
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3898
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3903
    sparse-switch v4, :sswitch_data_94

    .line 3974
    const/4 v3, 0x7

    .line 3978
    :goto_4e
    if-eq v0, v3, :cond_5c

    .line 3979
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3980
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "Clidigits"

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3981
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5c
    move v0, v3

    .line 3984
    goto :goto_28

    .line 3914
    :sswitch_5e
    const/4 v3, 0x7

    .line 3915
    goto :goto_4e

    .line 3928
    :sswitch_60
    const/16 v3, 0x8

    .line 3929
    goto :goto_4e

    .line 3934
    :sswitch_63
    const/16 v3, 0x9

    .line 3935
    goto :goto_4e

    .line 3941
    :sswitch_66
    const/16 v3, 0xa

    .line 3942
    goto :goto_4e

    .line 3946
    :sswitch_69
    const/16 v3, 0xb

    .line 3947
    goto :goto_4e

    .line 3951
    :sswitch_6c
    if-ne v5, v10, :cond_71

    .line 3952
    const/16 v3, 0x8

    goto :goto_4e

    .line 3954
    :cond_71
    const/4 v3, 0x7

    .line 3955
    goto :goto_4e

    .line 3959
    :sswitch_73
    if-eq v5, v10, :cond_7a

    const/4 v7, 0x2

    if-eq v5, v7, :cond_7a

    if-ne v5, v9, :cond_7c

    .line 3960
    :cond_7a
    const/4 v3, 0x7

    goto :goto_4e

    .line 3962
    :cond_7c
    const/16 v3, 0xa

    .line 3963
    goto :goto_4e

    .line 3967
    :sswitch_7f
    const/16 v7, 0x32

    if-eq v5, v7, :cond_8f

    if-eq v5, v11, :cond_8f

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_8f

    if-eq v5, v9, :cond_8f

    const/16 v7, 0x9

    if-ne v5, v7, :cond_91

    .line 3968
    :cond_8f
    const/4 v3, 0x7

    goto :goto_4e

    .line 3970
    :cond_91
    const/16 v3, 0x8

    .line 3971
    goto :goto_4e

    .line 3903
    :sswitch_data_94
    .sparse-switch
        0xd6 -> :sswitch_5e
        0x14a -> :sswitch_66
        0x14e -> :sswitch_7f
        0x152 -> :sswitch_5e
        0x16b -> :sswitch_5e
        0x170 -> :sswitch_60
        0x172 -> :sswitch_66
        0x176 -> :sswitch_5e
        0x1c6 -> :sswitch_60
        0x1c7 -> :sswitch_63
        0x1cc -> :sswitch_69
        0x1d2 -> :sswitch_63
        0x2c0 -> :sswitch_60
        0x2c2 -> :sswitch_60
        0x2c4 -> :sswitch_5e
        0x2c6 -> :sswitch_60
        0x2c8 -> :sswitch_60
        0x2ca -> :sswitch_5e
        0x2cc -> :sswitch_5e
        0x2d2 -> :sswitch_5e
        0x2d4 -> :sswitch_60
        0x2da -> :sswitch_60
        0x2dc -> :sswitch_66
        0x2de -> :sswitch_73
        0x2e0 -> :sswitch_60
        0x2e4 -> :sswitch_60
        0x2e8 -> :sswitch_5e
        0x2ec -> :sswitch_6c
    .end sparse-switch
.end method

.method public static getMinMatch()I
    .registers 3

    .prologue
    .line 4021
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 4022
    const/4 v0, 0x7

    .line 4026
    .local v0, "ret":I
    :goto_e
    return v0

    .line 4024
    .end local v0    # "ret":I
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_e
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 250
    const/4 v9, 0x0

    .line 252
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_9

    .line 296
    :cond_8
    :goto_8
    return-object v0

    .line 258
    :cond_9
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "tel"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "sip"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 261
    :cond_1f
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 264
    :cond_24
    if-eqz p1, :cond_8

    .line 268
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "type":Ljava/lang/String;
    const/4 v10, 0x0

    .line 272
    .local v10, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 274
    const-string/jumbo v10, "number"

    .line 279
    :cond_3a
    :goto_3a
    const/4 v7, 0x0

    .line 281
    .local v7, "c":Landroid/database/Cursor;
    :try_start_3b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 283
    if-eqz v7, :cond_5c

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 285
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_5b} :catch_6e
    .catchall {:try_start_3b .. :try_end_5b} :catchall_7c

    move-result-object v9

    .line 291
    :cond_5c
    if-eqz v7, :cond_61

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_61
    :goto_61
    move-object v0, v9

    .line 296
    goto :goto_8

    .line 275
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_63
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 276
    const-string v10, "data1"

    goto :goto_3a

    .line 288
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_6e
    move-exception v8

    .line 289
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_6f
    const-string v0, "PhoneNumberUtils"

    const-string v2, "Error getting phone number."

    invoke-static {v0, v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7c

    .line 291
    if-eqz v7, :cond_61

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_61

    .line 291
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catchall_7c
    move-exception v0

    if-eqz v7, :cond_82

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0
.end method

.method private static getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSharedPreference"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5634
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 5635
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "otaCountryMccKey"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5637
    .local v8, "spOtaCountryMcc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5638
    .local v0, "otacr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 5640
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_15

    if-nez v8, :cond_1f

    .line 5642
    :cond_15
    sget-object v1, OTA_COUNTRY_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5649
    :goto_1e
    return-object v6

    .line 5646
    :cond_1f
    sget-object v1, MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1e
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-static {p0}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 909
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3400
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3401
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_e

    .line 3402
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3404
    :cond_e
    if-gez v0, :cond_32

    .line 3405
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3409
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 470
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 471
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 473
    .local v3, "wIndex":I
    invoke-static {v1, v3}, minPositive(II)I

    move-result v2

    .line 475
    .local v2, "trimIndex":I
    if-gez v2, :cond_19

    .line 476
    add-int/lit8 v4, v0, -0x1

    .line 478
    :goto_18
    return v4

    :cond_19
    add-int/lit8 v4, v2, -0x1

    goto :goto_18
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1085
    move v2, p2

    .local v2, "i":I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_38

    .line 1088
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1092
    :cond_2d
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, KorMsgbcdToChar(B)C

    move-result v1

    .line 1096
    .local v1, "c":C
    :goto_36
    if-nez v1, :cond_43

    .line 1130
    .end local v1    # "c":C
    :cond_38
    return-void

    .line 1094
    :cond_39
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, bcdToChar(B)C

    move-result v1

    .restart local v1    # "c":C
    goto :goto_36

    .line 1099
    :cond_43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1110
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_57

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_38

    .line 1115
    :cond_57
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1119
    :cond_7f
    invoke-static {v0}, KorMsgbcdToChar(B)C

    move-result v1

    .line 1123
    :goto_83
    if-eqz v1, :cond_38

    .line 1127
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1121
    :cond_8c
    invoke-static {v0}, bcdToChar(B)C

    move-result v1

    goto :goto_83
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 918
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 931
    :goto_3
    return-object v5

    .line 920
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 921
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 923
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 924
    .local v4, "s":I
    :goto_10
    if-ltz v1, :cond_20

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_20

    .line 926
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 928
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 931
    .end local v0    # "c":C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 195
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 3686
    if-lez p0, :cond_e

    sget v0, CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isDefaultPlusCode(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5998
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    .line 6006
    :cond_b
    :goto_b
    return v0

    .line 6003
    :cond_c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_b

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_b

    move v0, v1

    .line 6004
    goto :goto_b
.end method

.method public static final isDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 201
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1220
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1222
    const/4 v2, 0x0

    .line 1225
    :goto_12
    return v2

    .line 1220
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1225
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2224
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2350
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2208
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2336
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2449
    if-nez p1, :cond_5

    .line 2491
    .end local p2    # "defaultCountryIso":Ljava/lang/String;
    :cond_4
    :goto_4
    return v1

    .line 2458
    .restart local p2    # "defaultCountryIso":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2464
    invoke-static {p1}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2466
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultCountryIso:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_2b

    const-string p2, "NULL"

    .end local p2    # "defaultCountryIso":Ljava/lang/String;
    :cond_2b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 2473
    :cond_5e
    invoke-static {p0, p1}, getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "cat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyNumber cat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2477
    if-eqz v0, :cond_4

    move v1, v2

    .line 2481
    goto :goto_4

    .line 2483
    .end local v0    # "cat":Ljava/lang/String;
    :cond_7c
    invoke-static {p0, p1}, getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2485
    .restart local v0    # "cat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyNumber cat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2487
    if-eqz v0, :cond_4

    move v1, v2

    .line 2491
    goto/16 :goto_4
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .registers 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2322
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2425
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 2297
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1212
    const/4 v1, 0x0

    .line 1216
    :goto_7
    return v1

    .line 1215
    :cond_8
    sget-object v1, GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1216
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 189
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .registers 6
    .param p0, "strNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3992
    const/4 v0, 0x0

    .line 3994
    .local v0, "bIsDigit":Z
    if-nez p0, :cond_5

    .line 4009
    :cond_4
    :goto_4
    return v3

    .line 3998
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_17

    .line 3999
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4000
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4001
    const/4 v0, 0x1

    .line 4006
    .end local v1    # "c":C
    :cond_17
    if-nez v0, :cond_4

    .line 4009
    const/4 v3, 0x1

    goto :goto_4

    .line 3998
    .restart local v1    # "c":C
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2586
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2572
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .registers 10
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .prologue
    .line 2692
    const-string v3, "country_detector"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2694
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 2695
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2702
    .local v0, "countryIso":Ljava/lang/String;
    :goto_18
    invoke-static {p0, p1, v0, p3}, isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2697
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2698
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2699
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2667
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 3334
    const/4 v2, 0x0

    .line 3335
    .local v2, "retVal":Z
    if-eqz p0, :cond_34

    .line 3336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 3337
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3339
    const/4 v2, 0x1

    .line 3340
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 3341
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3342
    .local v0, "c":C
    invoke-static {v0}, isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 3343
    const/4 v2, 0x0

    .line 3352
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_30
    :goto_30
    return v2

    .line 3340
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 3350
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_34
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static isNanpCountry(Ljava/lang/String;)Z
    .registers 4
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 3317
    sget-object v2, NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 3319
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_15

    .line 3320
    sget-object v2, NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 3321
    const/4 v2, 0x1

    .line 3324
    :goto_11
    return v2

    .line 3319
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3324
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 213
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1229
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1230
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1231
    const/4 v2, 0x0

    .line 1234
    :goto_12
    return v2

    .line 1229
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1234
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 3359
    const/4 v1, 0x0

    .line 3360
    .local v1, "retVal":Z
    if-eqz p0, :cond_19

    .line 3361
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3362
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3363
    const/4 v1, 0x1

    .line 3368
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 3366
    :cond_19
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static isPause(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 227
    const/16 v0, 0x70

    if-eq p0, v0, :cond_8

    const/16 v0, 0x50

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2274
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2403
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2248
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2377
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2641
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2614
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 207
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 238
    invoke-static {p0}, isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 222
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isToneWait(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 232
    const/16 v0, 0x77

    if-eq p0, v0, :cond_8

    const/16 v0, 0x57

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 3284
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 3285
    const/4 v0, 0x1

    .line 3287
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3384
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2732
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2752
    if-nez p0, :cond_2d

    .line 2753
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2757
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    :goto_8
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_b} :catch_32

    move-result-object v2

    .line 2763
    .local v2, "vmNumber":Ljava/lang/String;
    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_35

    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "-GLB-USA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_35

    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "VZW-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2765
    const-string v5, "*86"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2777
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v3

    .line 2755
    :cond_2d
    :try_start_2d
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_30} :catch_32

    move-result-object v1

    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_8

    .line 2758
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_32
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    move v3, v4

    .line 2759
    goto :goto_2c

    .line 2773
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v2    # "vmNumber":Ljava/lang/String;
    :cond_35
    invoke-static {p2}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {p2, v2}, compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_45
    move v3, v4

    goto :goto_2c
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2716
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0, p0}, isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1202
    invoke-static {p0}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3559
    const/4 v2, 0x0

    .line 3560
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_45

    .line 3561
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3563
    .local v0, "c":C
    packed-switch v2, :pswitch_data_50

    .line 3582
    :pswitch_11
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3588
    .end local v0    # "c":C
    :cond_17
    :goto_17
    return v3

    .line 3565
    .restart local v0    # "c":C
    :pswitch_18
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_20

    const/4 v2, 0x1

    .line 3560
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3566
    :cond_20
    if-ne v0, v6, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 3567
    :cond_24
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 3571
    :pswitch_2b
    if-ne v0, v6, :cond_2f

    const/4 v2, 0x3

    goto :goto_1d

    .line 3572
    :cond_2f
    if-ne v0, v7, :cond_33

    const/4 v2, 0x4

    goto :goto_1d

    .line 3573
    :cond_33
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 3577
    :pswitch_3a
    if-ne v0, v7, :cond_3e

    const/4 v2, 0x5

    goto :goto_1d

    .line 3578
    :cond_3e
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 3588
    .end local v0    # "c":C
    :cond_45
    if-eq v2, v4, :cond_4d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4d

    const/4 v5, 0x5

    if-ne v2, v5, :cond_17

    :cond_4d
    move v3, v4

    goto :goto_17

    .line 3563
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_18
        :pswitch_11
        :pswitch_2b
        :pswitch_11
        :pswitch_3a
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 3598
    const/4 v2, 0x0

    .line 3599
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p1, :cond_63

    .line 3600
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3602
    .local v0, "c":C
    packed-switch v2, :pswitch_data_70

    .line 3634
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3638
    .end local v0    # "c":C
    :cond_16
    :goto_16
    return v3

    .line 3604
    .restart local v0    # "c":C
    :pswitch_17
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1f

    const/4 v2, 0x1

    .line 3599
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3605
    :cond_1f
    if-ne v0, v5, :cond_23

    const/4 v2, 0x2

    goto :goto_1c

    .line 3606
    :cond_23
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3610
    :pswitch_2a
    if-ne v0, v5, :cond_2e

    const/4 v2, 0x3

    goto :goto_1c

    .line 3611
    :cond_2e
    if-ne v0, v6, :cond_32

    const/4 v2, 0x4

    goto :goto_1c

    .line 3612
    :cond_32
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3616
    :pswitch_39
    if-ne v0, v6, :cond_3d

    const/4 v2, 0x5

    goto :goto_1c

    .line 3617
    :cond_3d
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3623
    :pswitch_44
    invoke-static {v0}, isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v2, 0x6

    goto :goto_1c

    .line 3624
    :cond_4c
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3629
    :pswitch_53
    invoke-static {v0}, isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 3630
    :cond_5c
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3638
    .end local v0    # "c":C
    :cond_63
    const/4 v4, 0x6

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x7

    if-eq v2, v4, :cond_6d

    const/16 v4, 0x8

    if-ne v2, v4, :cond_16

    :cond_6d
    const/4 v3, 0x1

    goto :goto_16

    .line 3602
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_17
        :pswitch_44
        :pswitch_2a
        :pswitch_44
        :pswitch_39
        :pswitch_44
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 3646
    const/4 v1, 0x0

    .line 3648
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p1, :cond_19

    .line 3649
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3651
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 3652
    const/4 v1, 0x1

    .line 3648
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3653
    :cond_12
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3654
    const/4 v1, 0x0

    .line 3658
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_19
    return v1
.end method

.method private static minPositive(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 445
    if-ltz p0, :cond_9

    if-ltz p1, :cond_9

    .line 446
    if-ge p0, p1, :cond_7

    .line 452
    .end local p0    # "a":I
    :cond_6
    :goto_6
    return p0

    .restart local p0    # "a":I
    :cond_7
    move p0, p1

    .line 446
    goto :goto_6

    .line 447
    :cond_9
    if-gez p0, :cond_6

    .line 449
    if-ltz p1, :cond_f

    move p0, p1

    .line 450
    goto :goto_6

    .line 452
    :cond_f
    const/4 p0, -0x1

    goto :goto_6
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-static {p0}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1267
    invoke-static {p0}, extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2137
    const-string v5, ""

    .line 2154
    :goto_8
    return-object v5

    .line 2140
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2141
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2142
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v3, :cond_57

    .line 2143
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2145
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2146
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_28

    .line 2147
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2142
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2148
    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_32

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_3a

    :cond_32
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_3a

    const/16 v5, 0x23

    if-ne v0, v5, :cond_3e

    .line 2149
    :cond_3a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 2150
    :cond_3e
    const/16 v5, 0x61

    if-lt v0, v5, :cond_46

    const/16 v5, 0x7a

    if-le v0, v5, :cond_4e

    :cond_46
    const/16 v5, 0x41

    if-lt v0, v5, :cond_25

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_25

    .line 2151
    :cond_4e
    invoke-static {p0}, convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 2154
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1280
    const/4 v0, 0x0

    invoke-static {p0, v0}, numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 17
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1290
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1291
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_17

    const/4 v3, 0x1

    .line 1292
    .local v3, "hasPlus":Z
    :goto_f
    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, -0x1

    .line 1294
    :cond_13
    if-nez v5, :cond_19

    const/4 v9, 0x0

    .line 1319
    :goto_16
    return-object v9

    .line 1291
    .end local v3    # "hasPlus":Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_f

    .line 1296
    .restart local v3    # "hasPlus":Z
    :cond_19
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1297
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1298
    .local v2, "extraBytes":I
    if-eqz p1, :cond_22

    add-int/lit8 v2, v2, 0x1

    .line 1299
    :cond_22
    add-int/2addr v10, v2

    .line 1301
    new-array v9, v10, [B

    .line 1303
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1304
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v6, :cond_50

    .line 1305
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1306
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_34

    .line 1304
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1307
    :cond_34
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4e

    const/4 v11, 0x4

    .line 1308
    .local v11, "shift":I
    :goto_3a
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1307
    .end local v11    # "shift":I
    :cond_4e
    const/4 v11, 0x0

    goto :goto_3a

    .line 1313
    .end local v0    # "c":C
    :cond_50
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5f

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1315
    :cond_5f
    const/4 v7, 0x0

    .line 1316
    .local v7, "offset":I
    if-eqz p1, :cond_6a

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1317
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_6a
    if-eqz v3, :cond_72

    const/16 v12, 0x91

    :goto_6e
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_16

    :cond_72
    const/16 v12, 0x81

    goto :goto_6e
.end method

.method public static processCLIRDigitsWithinNetworkDial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sDialNumber"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x38

    const/16 v9, 0x31

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6014
    const/4 v3, 0x0

    .line 6015
    .local v3, "sNetworkDial":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6016
    .local v0, "isCheck":Z
    const/4 v1, 0x0

    .line 6018
    .local v1, "isEmergencyCall":Z
    invoke-static {p0, p1}, extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6019
    invoke-static {p1}, isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 6020
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "button_clir_key"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_74

    move v0, v4

    .line 6021
    :goto_1f
    const-string v6, "gsm.operator.iso-country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6023
    .local v2, "sCountry":Ljava/lang/String;
    if-nez v0, :cond_73

    if-nez v1, :cond_73

    const-string v6, "jp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 6024
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_45

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_45

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x34

    if-eq v6, v7, :cond_73

    :cond_45
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_59

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_59

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x36

    if-eq v4, v5, :cond_73

    .line 6026
    :cond_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "184"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6027
    const-string v4, "PhoneNumberUtils"

    const-string v5, "Add 184 to dialnumber"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    :cond_73
    return-object v3

    .end local v2    # "sCountry":Ljava/lang/String;
    :cond_74
    move v0, v5

    .line 6020
    goto :goto_1f
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3419
    move-object v1, p0

    .line 3425
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_26

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_26

    .line 3428
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3430
    .local v0, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_27

    invoke-static {v0}, isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3432
    move-object v1, v0

    .line 3434
    const-string/jumbo v2, "processPlusCode - Remove the leading plus sign"

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 3445
    .end local v0    # "newStr":Ljava/lang/String;
    :cond_26
    :goto_26
    return-object v1

    .line 3438
    .restart local v0    # "newStr":Ljava/lang/String;
    :cond_27
    const-string v2, "[+]"

    invoke-static {p1}, getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processPlusCode - Replaces the plus sign with the default IDP (useNanp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current IDP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto :goto_26
.end method

.method private static processPlusCode(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3450
    move-object v4, p0

    .line 3456
    .local v4, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_a5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_a5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_a5

    .line 3459
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3462
    .local v3, "newStr":Ljava/lang/String;
    sget-object v7, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v7, :cond_d2

    sget-object v7, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v8, "SPR-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 3463
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3464
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "toggle_country_name"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3466
    .local v0, "isUSDialingValue":Z
    invoke-static {v3}, isOneNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6

    if-eqz v0, :cond_a6

    .line 3467
    const-string v1, ""

    .line 3469
    .local v1, "iso":Ljava/lang/String;
    sget-object v7, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v7, :cond_51

    sget-object v7, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v8, "SPR-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3470
    const-string v7, "gsm.operator.iso-country.real"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3472
    :cond_51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 3473
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 3475
    :cond_5f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 3476
    .local v5, "simIso":Ljava/lang/String;
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SIM ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_a5

    invoke-static {v1}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_a5

    invoke-static {v5}, getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_a5

    .line 3482
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3483
    const-string/jumbo v7, "processPlusCode - Remove the leading plus sign and 1"

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 3505
    .end local v0    # "isUSDialingValue":Z
    .end local v1    # "iso":Ljava/lang/String;
    .end local v3    # "newStr":Ljava/lang/String;
    .end local v5    # "simIso":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_a5
    :goto_a5
    return-object v4

    .line 3486
    .restart local v0    # "isUSDialingValue":Z
    .restart local v3    # "newStr":Ljava/lang/String;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_a6
    const-string v7, "country_code"

    const-string v8, "011"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3488
    .local v2, "nanpIDPString":Ljava/lang/String;
    const-string v7, "[+]"

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCode - Replaces the plus sign with the NANP IDP (NANP IDP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, log(Ljava/lang/String;)V

    goto :goto_a5

    .line 3493
    .end local v0    # "isUSDialingValue":Z
    .end local v2    # "nanpIDPString":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_d2
    if-eqz p1, :cond_e2

    invoke-static {v3}, isOneNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 3495
    move-object v4, v3

    .line 3496
    const-string/jumbo v7, "processPlusCode - Remove the leading plus sign"

    invoke-static {v7}, log(Ljava/lang/String;)V

    goto :goto_a5

    .line 3499
    :cond_e2
    const-string v7, "[+]"

    invoke-static {p1}, getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCode - Replaces the plus sign with the default IDP (useNanp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current IDP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, log(Ljava/lang/String;)V

    goto :goto_a5
.end method

.method private static processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 5940
    const/4 v2, 0x0

    .line 5941
    .local v2, "retStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5942
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 5943
    move-object v2, p1

    .line 5944
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5951
    :cond_a
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 5952
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "country_code"

    const-string v7, "011"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5953
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "toggle_country_name"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5955
    .local v0, "isChecked":Z
    const/4 v3, 0x0

    .line 5956
    .local v3, "sCountry":Ljava/lang/String;
    const-string v6, "gsm.operator.iso-country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5957
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConvertPlusPrefixNumberToMnoCode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 5959
    const-string v6, "cn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "nz"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "mx"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "mo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string v6, "il"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string v6, "in"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "pe"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "vn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "ve"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string v6, "bd"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 5962
    :cond_86
    const-string v5, "00"

    .line 5977
    :cond_88
    :goto_88
    if-eqz p1, :cond_a8

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_a8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_a8

    .line 5981
    invoke-static {v1}, isOneNanp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-static {v5}, isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10d

    if-eqz v0, :cond_10d

    .line 5983
    move-object v2, v1

    .line 5993
    :cond_a8
    :goto_a8
    return-object v2

    .line 5963
    :cond_a9
    const-string/jumbo v6, "th"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c2

    const-string v6, "hk"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c2

    const-string v6, "id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 5964
    :cond_c2
    const-string v5, "001"

    goto :goto_88

    .line 5965
    :cond_c5
    const-string/jumbo v6, "mp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    const-string v6, "bm"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    const-string/jumbo v6, "us"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    const-string v6, "bs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 5966
    :cond_e7
    const-string v5, "011"

    goto :goto_88

    .line 5967
    :cond_ea
    const-string/jumbo v6, "tw"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 5968
    const-string v5, "005"

    goto :goto_88

    .line 5969
    :cond_f6
    const-string v6, "kr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    .line 5970
    const-string v5, "00700"

    goto :goto_88

    .line 5971
    :cond_101
    const-string v6, "jp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 5972
    const-string v5, "010"

    goto/16 :goto_88

    .line 5984
    :cond_10d
    const-string v6, "jp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x38

    if-ne v6, v7, :cond_130

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_130

    .line 5986
    const-string v6, "[+]81"

    const-string v7, "0"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a8

    .line 5987
    :cond_130
    const-string v6, "jp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 5989
    const-string v6, "[+]"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a8
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1967
    const/4 v0, 0x0

    .line 1968
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1969
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 1970
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1972
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1975
    :cond_18
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2165
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_26

    aget-char v1, v0, v3

    .line 2166
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 2167
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_22

    .line 2168
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2165
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2170
    :cond_22
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 2173
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5259
    const-string v1, "gsm.current.phone-type"

    invoke-static {v1, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, phoneType:I

    .line 5261
    invoke-static {p0}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, numberLength:I

    .line 5263
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, isNetRoaming:Z

    .line 5266
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 5268
    .local v6, "mdn":Ljava/lang/String;
    if-eqz v6, :cond_42

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v10, :cond_42

    .line 5351
    :cond_41
    :goto_41
    return v9

    .line 5273
    :cond_42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5275
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, mCursor:Landroid/database/Cursor;

    .line 5276
    sget-object v1, mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_41

    .line 5281
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5285
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, refCountryName:Ljava/lang/String;

    .line 5286
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5287
    .local v7, "refmcc":Ljava/lang/String;
    const-string v1, "310 to 316"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    const-string v7, "310"

    .end local v7    # "refmcc":Ljava/lang/String;
    :cond_72
    :goto_72
    sput-object v7, refCountryMCC:Ljava/lang/String;

    .line 5288
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, refCountryIDDPrefix:Ljava/lang/String;

    .line 5289
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, refCountryNDDPrefix:Ljava/lang/String;

    .line 5290
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NANP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    move v1, v8

    :goto_95
    sput-boolean v1, isNANPCountry:Z

    .line 5291
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, refCountryCountryCode:Ljava/lang/String;

    .line 5292
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, isNBPCDSupported:Z

    .line 5294
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, refCountryAreaCode:Ljava/lang/String;

    .line 5295
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 5297
    sget-object v1, refCountryAreaCode:Ljava/lang/String;

    if-nez v1, :cond_d7

    .line 5298
    if-eqz v6, :cond_1b3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v10, :cond_1b3

    .line 5299
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, refCountryAreaCode:Ljava/lang/String;

    .line 5306
    :cond_d7
    :goto_d7
    sget-object v1, refCountryNationalNumberLength:Ljava/lang/Integer;

    if-nez v1, :cond_ed

    .line 5307
    if-eqz v6, :cond_1b9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v10, :cond_1b9

    .line 5308
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 5315
    :cond_ed
    :goto_ed
    const-string v1, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refCountryMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, refCountryMCC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5318
    sget v1, phoneType:I

    if-ne v1, v8, :cond_1c3

    move v1, v8

    :goto_112
    sput-boolean v1, isGSMRegistered:Z

    .line 5319
    sget v1, phoneType:I

    if-ne v1, v11, :cond_1c6

    move v1, v8

    :goto_119
    sput-boolean v1, isCDMARegistered:Z

    .line 5321
    invoke-static {p1, v8}, getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, mCursor:Landroid/database/Cursor;

    .line 5323
    sput-object v2, otaCountryMCC:Ljava/lang/String;

    .line 5324
    sget-object v1, mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_18e

    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 5325
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryName:Ljava/lang/String;

    .line 5326
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryMCC:Ljava/lang/String;

    .line 5328
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryIDDPrefix:Ljava/lang/String;

    .line 5329
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryNDDPrefix:Ljava/lang/String;

    .line 5330
    sget-object v1, otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_158

    .line 5331
    const-string v1, ""

    sput-object v1, otaCountryNDDPrefix:Ljava/lang/String;

    .line 5334
    :cond_158
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    move v1, v8

    :goto_168
    sput-boolean v1, isOTANANPCountry:Z

    .line 5335
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, otaCountryCountryCode:Ljava/lang/String;

    .line 5336
    sget-object v1, mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, isOTANBPCDSupported:Z

    .line 5337
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    const-string v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    const-string v1, "310"

    :goto_18c
    sput-object v1, otaCountryMCC:Ljava/lang/String;

    .line 5340
    :cond_18e
    sget-object v1, mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_197

    .line 5341
    sget-object v1, mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5344
    :cond_197
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    if-nez v1, :cond_1db

    .line 5345
    const-string v1, "PhoneNumberUtils"

    const-string v2, "OTA country not found"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 5287
    .restart local v7    # "refmcc":Ljava/lang/String;
    :cond_1a4
    const-string v1, "430 to 431"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v7, "430"

    goto/16 :goto_72

    .end local v7    # "refmcc":Ljava/lang/String;
    :cond_1b0
    move v1, v9

    .line 5290
    goto/16 :goto_95

    .line 5302
    :cond_1b3
    const-string v1, "123"

    sput-object v1, refCountryAreaCode:Ljava/lang/String;

    goto/16 :goto_d7

    .line 5311
    :cond_1b9
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, refCountryNationalNumberLength:Ljava/lang/Integer;

    goto/16 :goto_ed

    :cond_1c3
    move v1, v9

    .line 5318
    goto/16 :goto_112

    :cond_1c6
    move v1, v9

    .line 5319
    goto/16 :goto_119

    :cond_1c9
    move v1, v9

    .line 5334
    goto :goto_168

    .line 5337
    :cond_1cb
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    const-string v1, "430"

    goto :goto_18c

    :cond_1d8
    sget-object v1, otaCountryMCC:Ljava/lang/String;

    goto :goto_18c

    .line 5349
    :cond_1db
    invoke-static {}, displayAssistedParams()V

    move v9, v8

    .line 5351
    goto/16 :goto_41
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 3170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3171
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 3172
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3171
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3172
    :cond_28
    const-string v2, " "

    goto :goto_22

    .line 3179
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_33

    .line 5654
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "65"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5656
    :cond_2a
    const-string v1, "PhoneNumberUtils"

    const-string v2, "length 12 - 7,20,65,90 is detected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 5687
    :goto_32
    return v1

    .line 5661
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-lt v1, v3, :cond_96

    .line 5663
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 5664
    const-string v1, "PhoneNumberUtils"

    const-string v2, "US country code is detected with more than 11 digits"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 5665
    goto :goto_32

    .line 5668
    :cond_4c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5669
    .local v0, "ContryCode":Landroid/content/ContentResolver;
    sget-object v1, MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, mCursorContry:Landroid/database/Cursor;

    .line 5671
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5672
    :goto_60
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_8d

    sget-object v1, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 5673
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 5674
    const-string v1, "PhoneNumberUtils"

    const-string v2, "contry code is detected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5675
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5676
    const/4 v1, 0x1

    goto :goto_32

    .line 5678
    :cond_87
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_60

    .line 5681
    :cond_8d
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_96

    .line 5682
    sget-object v1, mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v0    # "ContryCode":Landroid/content/ContentResolver;
    :cond_96
    move v1, v6

    .line 5687
    goto :goto_32
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 942
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 948
    .end local p0    # "s":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p0

    .line 944
    .restart local p0    # "s":Ljava/lang/String;
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 382
    if-nez p0, :cond_4

    .line 383
    const/4 v5, 0x0

    .line 399
    :goto_3
    return-object v5

    .line 385
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 386
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_2d

    .line 389
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 391
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 392
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_23

    .line 393
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 394
    :cond_23
    invoke-static {v0}, isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 395
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 399
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 878
    invoke-static {p0}, extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "np":Ljava/lang/String;
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "CHN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CHU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 885
    :cond_33
    const/16 v2, 0xb

    invoke-static {v0, v2}, internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 892
    :goto_39
    return-object v2

    .line 886
    :cond_3a
    const-string v2, "FET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "TWM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "CWT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "BRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 887
    :cond_5a
    const/16 v2, 0x9

    invoke-static {v0, v2}, internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 888
    :cond_61
    const-string v2, "TGY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 889
    const/16 v2, 0x8

    invoke-static {v0, v2}, internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 892
    :cond_70
    invoke-static {}, getMinMatch()I

    move-result v2

    invoke-static {v0, v2}, internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 958
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 959
    const/16 v0, 0x91

    .line 962
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 3725
    const/4 v5, 0x0

    .line 3726
    .local v5, "state":I
    const/4 v0, 0x0

    .line 3727
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3728
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_17

    .line 3729
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3730
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_9c

    .line 3799
    .end local v1    # "ch":C
    :cond_17
    :goto_17
    return-object v6

    .line 3732
    .restart local v1    # "ch":C
    :pswitch_18
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_20

    const/4 v5, 0x1

    .line 3728
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3733
    :cond_20
    if-ne v1, v9, :cond_24

    const/4 v5, 0x2

    goto :goto_1d

    .line 3734
    :cond_24
    if-ne v1, v8, :cond_2b

    .line 3735
    if-eqz p1, :cond_17

    .line 3736
    const/16 v5, 0x8

    goto :goto_1d

    .line 3740
    :cond_2b
    invoke-static {v1}, isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3746
    :pswitch_32
    if-ne v1, v9, :cond_36

    const/4 v5, 0x3

    goto :goto_1d

    .line 3747
    :cond_36
    if-ne v1, v8, :cond_3a

    const/4 v5, 0x4

    goto :goto_1d

    .line 3748
    :cond_3a
    invoke-static {v1}, isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3754
    :pswitch_41
    if-ne v1, v8, :cond_45

    const/4 v5, 0x5

    goto :goto_1d

    .line 3755
    :cond_45
    invoke-static {v1}, isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3766
    :pswitch_4c
    invoke-static {v1}, tryGetISODigit(C)I

    move-result v4

    .line 3767
    .local v4, "ret":I
    if-gtz v4, :cond_58

    if-nez v4, :cond_7c

    const/16 v7, 0xa

    if-ge v0, v7, :cond_7c

    .line 3768
    :cond_58
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 3769
    const/16 v7, 0x64

    if-ge v0, v7, :cond_66

    invoke-static {v0}, isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 3770
    :cond_66
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 3772
    :cond_6e
    const/4 v7, 0x1

    if-eq v5, v7, :cond_77

    const/4 v7, 0x3

    if-eq v5, v7, :cond_77

    const/4 v7, 0x5

    if-ne v5, v7, :cond_79

    .line 3773
    :cond_77
    const/4 v5, 0x6

    goto :goto_1d

    .line 3775
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 3777
    :cond_7c
    invoke-static {v1}, isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3783
    .end local v4    # "ret":I
    :pswitch_83
    if-ne v1, v10, :cond_88

    const/16 v5, 0x9

    goto :goto_1d

    .line 3784
    :cond_88
    invoke-static {v1}, isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3789
    :pswitch_8f
    if-ne v1, v10, :cond_17

    .line 3790
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_17

    .line 3730
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_4c
        :pswitch_32
        :pswitch_4c
        :pswitch_41
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_83
        :pswitch_8f
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 3696
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 3697
    add-int/lit8 v0, p0, -0x30

    .line 3699
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 3812
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3813
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_14

    .line 3814
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3815
    .local v0, "ch":C
    invoke-static {v0}, tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 3816
    add-int/lit8 v3, v1, 0x1

    .line 3821
    .end local v0    # "ch":C
    :cond_14
    return v3

    .line 3817
    .restart local v0    # "ch":C
    :cond_15
    invoke-static {v0}, isDialable(C)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3813
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3110
    invoke-static {p0}, createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .registers 3
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3127
    invoke-static {p0, p1, p2}, addTtsSpan(Landroid/text/Spannable;II)V

    .line 3128
    return-void
.end method
