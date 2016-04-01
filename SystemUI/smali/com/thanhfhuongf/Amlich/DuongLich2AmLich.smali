.class public Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;
.super Landroid/widget/TextView;
.source "DuongLich2AmLich.java"


# instance fields
.field CanArr:[Ljava/lang/String;

.field ChiArr:[Ljava/lang/String;

.field chDay:I

.field chLeapMonth:Z

.field private chMonth:I

.field chMonthData:[I

.field private chYear:I

.field chYearData:[I

.field private dayOfMonth:I

.field private dayOfWeek:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;-><init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;-><init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    const/16 v0, 0xb3

    new-array v0, v0, [I

    const/16 v1, 0x180

    aput v1, v0, v3

    const/16 v1, 0x2e3

    aput v1, v0, v4

    const/16 v1, 0x445

    aput v1, v0, v5

    const/16 v1, 0x5c5

    aput v1, v0, v6

    const/16 v1, 0x727

    aput v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0x889

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa09

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb6b

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xcce

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe4e

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xfb1

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1131

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1293

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x13f5

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1574

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x16d7

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x1839

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x19b9

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1b1c

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1c9c

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x1dfe

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x1f61

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x20e0

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x2242

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x23a5

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2525

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x2687

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x27ea

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x296a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2acc

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x2c4c

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x2dae

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2f10

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x3090

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x31f2

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3355

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x34d5

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x3638

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37b8

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x391a

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x3a7c

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3bfc

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3d5e

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3ec0

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x4041

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x41a3

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x4306

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x4486

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x45e8

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x4767

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x48c9

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x4a2c

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4bac

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x4d0f

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x4e71

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4ff1

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x5153

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x52d3

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x5435

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x5597

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x5717

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x587a

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x59dc

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x5b5d

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x5cbf

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x5e21

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x5fa1

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x6103

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x6283

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x63e5

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x6548

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x66c8

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x682a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x698d

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x6b0d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x6c6f

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x6dee

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x6f51

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x70b3

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x7233

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x7396

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x74f8

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x7678

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x77db

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x793c

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x7abc

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x7c1f

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x7d9f

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x7f01

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x8064

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x81e4

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x8346

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x84a8

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x8628

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x878a

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x890a

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x8a6c

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x8bcf

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x8d4f

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x8eb2

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x9014

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x9194

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x92f6

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x9476

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x95d8

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x973a

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x98ba

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x9a1d

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x9b80

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x9d00

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x9e62

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x9fc4

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xa143

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xa2a6

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xa426

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xa588

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xa6eb

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xa86b

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xa9cd

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xab2f

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xacaf

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xae11

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xaf74

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xb0f4

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xb256

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xb3d7

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xb539

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xb69b

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xb81b

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xb97d

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xbadf

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xbc5f

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xbdc2

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xbf42

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xc0a4

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xc207

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xc387

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xc4e9

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xc669

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xc7cb

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xc92e

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xcaae

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xcc10

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0xcd72

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xcef2

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xd054

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xd1b6

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xd336

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xd499

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xd5fb

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xd77b

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xd8de

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xda5e

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xdbc0

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xdd22

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xdea2

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xe004

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xe166

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xe2e6

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xe449

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xe5ac

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xe72c

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xe88e

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xea0e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xeb70

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xecd2

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xee52

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xefb4

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xf117

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xf297

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xf3fa

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xf57a

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xf6dc

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xf83e

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0xf9bd

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xfb20

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xfc82

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xfe02

    aput v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    .line 132
    const/16 v0, 0xb3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonthData:[I

    .line 133
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gi\u00e1p"

    aput-object v2, v0, v1

    const-string v1, "\u1ea4t"

    aput-object v1, v0, v3

    const-string v1, "B\u00ednh"

    aput-object v1, v0, v4

    const-string v1, "\u0110inh"

    aput-object v1, v0, v5

    const-string v1, "M\u1eadu"

    aput-object v1, v0, v6

    const-string v1, "K\u1ef7"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Canh"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "T\u00e2n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Nh\u00e2m"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Qu\u00fd"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->CanArr:[Ljava/lang/String;

    .line 134
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "T\u00fd"

    aput-object v2, v0, v1

    const-string v1, "S\u1eedu"

    aput-object v1, v0, v3

    const-string v1, "D\u1ea7n"

    aput-object v1, v0, v4

    const-string v1, "M\u00e3o"

    aput-object v1, v0, v5

    const-string v1, "Th\u00ecn"

    aput-object v1, v0, v6

    const-string v1, "T\u1ef5"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Ng\u1ecd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "M\u00f9i"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Th\u00e2n"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "D\u1eadu"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Tu\u1ea5t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "H\u1ee3i"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->ChiArr:[Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mContext:Landroid/content/Context;

    .line 67
    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0x459444
        0x514444
        0x454410
        0x1456041
        0x511041
        0x444111
        0x1110645
        0x110451
        0x444451
        0x1114464
        0x514444
        0x1516410
        0x544410
        0x511044
        0x444911
        0x444115
        0x111114
        0x444591
        0x445111
        0x1165104
        0x151104
        0x544411
        0x1141844
        0x141045
        0x444145
        0x1111314
        0x111444
        0x451141
        0x1151124
        0x151104
        0x1452411
        0x450411
        0x441045
        0x1104c45
        0x44451
        0x111445
        0x451461
        0x514441
        0x151c104
        0x544104
        0x510411
        0x1441911
        0x441114
        0x44514
        0x1114711
        0x145110
        0x544441
        0x1544124
        0x544104
        0x512414
        0x110445
        0x441115
        0x1045914
        0x451144
        0x145110
        0x5450c1
        0x151041
        0x114c105
        0x444105
        0x110445
        0x443145
        0x444451
        0x111444
        0x1451311
        0x454410
        0x451041
        0x1444125
        0x444111
        0x1118451
        0x110514
        0x444451
        0x1114c44
        0x115104
        0x514411
        0x15110c4
        0x511044
        0x464111
        0x444115
        0x111114
        0x446511
        0x445111
        0x145104
        0x544611
        0x544411
        0x141044
        0x504195
        0x444145
        0x1119144
        0x111444
        0x451441
        0x1151904
        0x451104
        0x450411
        0x1141245
        0x441045
        0x1124445
        0x44451
        0x114451
        0x453441
        0x514441
        0x514104
        0x1510611
        0x510411
        0x1641051
        0x441114
        0x44514
        0x116511
        0x145111
        0x545041
        0x1544904
        0x544104
        0x510414
        0x441194
        0x441115
        0x1125114
        0x51144
        0x145111
        0x1145841
        0x151041
        0x144105
        0x1110645
        0x110445
        0x441145
        0x1111161
        0x111444
        0x1459111
        0x454410
        0x451041
        0x1444905
        0x444111
        0x110451
        0x444651
        0x444511
        0x1194444
        0x115104
        0x514411
        0x1513044
        0x511044
        0x1110654
        0x111114
        0x444511
        0x1114524
        0x145104
        0x145104
        0x546411
        0x150411    # 1.930004E-39f
        0x141045
        0x504915
        0x504445
        0x111144
        0x445194
        0x451441
        0x1159104
        0x451104
        0x450411
        0x1443045
        0x441045
        0x104445
        0x111945
        0x114451
        0x451444
        0x1451124
        0x514104
        0x1518411
        0x510411
        0x441111
        0x1101c51
        0x104514
        0x114511
        0x5144c4
        0x545041
        0x1564104
        0x544104
        0x510414
        0x443114
        0x441115
        0x105114
        0x145311
        0x51111
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;-><init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;-><init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    const/16 v0, 0xb3

    new-array v0, v0, [I

    const/16 v1, 0x180

    aput v1, v0, v3

    const/16 v1, 0x2e3

    aput v1, v0, v4

    const/16 v1, 0x445

    aput v1, v0, v5

    const/16 v1, 0x5c5

    aput v1, v0, v6

    const/16 v1, 0x727

    aput v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0x889

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa09

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb6b

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xcce

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe4e

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xfb1

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1131

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1293

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x13f5

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1574

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x16d7

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x1839

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x19b9

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1b1c

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1c9c

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x1dfe

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x1f61

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x20e0

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x2242

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x23a5

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2525

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x2687

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x27ea

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x296a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2acc

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x2c4c

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x2dae

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2f10

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x3090

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x31f2

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3355

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x34d5

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x3638

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37b8

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x391a

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x3a7c

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3bfc

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3d5e

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3ec0

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x4041

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x41a3

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x4306

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x4486

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x45e8

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x4767

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x48c9

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x4a2c

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4bac

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x4d0f

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x4e71

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4ff1

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x5153

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x52d3

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x5435

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x5597

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x5717

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x587a

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x59dc

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x5b5d

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x5cbf

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x5e21

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x5fa1

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x6103

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x6283

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x63e5

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x6548

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x66c8

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x682a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x698d

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x6b0d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x6c6f

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x6dee

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x6f51

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x70b3

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x7233

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x7396

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x74f8

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x7678

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x77db

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x793c

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x7abc

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x7c1f

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x7d9f

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x7f01

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x8064

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x81e4

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x8346

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x84a8

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x8628

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x878a

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x890a

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x8a6c

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x8bcf

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x8d4f

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x8eb2

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x9014

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x9194

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x92f6

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x9476

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x95d8

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x973a

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x98ba

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x9a1d

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x9b80

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x9d00

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x9e62

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x9fc4

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xa143

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xa2a6

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xa426

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xa588

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xa6eb

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xa86b

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xa9cd

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xab2f

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xacaf

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xae11

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xaf74

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xb0f4

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xb256

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xb3d7

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xb539

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xb69b

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xb81b

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xb97d

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xbadf

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xbc5f

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xbdc2

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xbf42

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xc0a4

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xc207

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xc387

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xc4e9

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xc669

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xc7cb

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xc92e

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xcaae

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xcc10

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0xcd72

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xcef2

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xd054

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xd1b6

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xd336

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xd499

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xd5fb

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xd77b

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xd8de

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xda5e

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xdbc0

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xdd22

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xdea2

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xe004

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xe166

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xe2e6

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xe449

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xe5ac

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xe72c

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xe88e

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xea0e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xeb70

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xecd2

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xee52

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xefb4

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xf117

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xf297

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xf3fa

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xf57a

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xf6dc

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xf83e

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0xf9bd

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xfb20

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xfc82

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xfe02

    aput v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    .line 132
    const/16 v0, 0xb3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonthData:[I

    .line 133
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gi\u00e1p"

    aput-object v2, v0, v1

    const-string v1, "\u1ea4t"

    aput-object v1, v0, v3

    const-string v1, "B\u00ednh"

    aput-object v1, v0, v4

    const-string v1, "\u0110inh"

    aput-object v1, v0, v5

    const-string v1, "M\u1eadu"

    aput-object v1, v0, v6

    const-string v1, "K\u1ef7"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Canh"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "T\u00e2n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Nh\u00e2m"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Qu\u00fd"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->CanArr:[Ljava/lang/String;

    .line 134
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "T\u00fd"

    aput-object v2, v0, v1

    const-string v1, "S\u1eedu"

    aput-object v1, v0, v3

    const-string v1, "D\u1ea7n"

    aput-object v1, v0, v4

    const-string v1, "M\u00e3o"

    aput-object v1, v0, v5

    const-string v1, "Th\u00ecn"

    aput-object v1, v0, v6

    const-string v1, "T\u1ef5"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Ng\u1ecd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "M\u00f9i"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Th\u00e2n"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "D\u1eadu"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Tu\u1ea5t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "H\u1ee3i"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->ChiArr:[Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mContext:Landroid/content/Context;

    .line 72
    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0x459444
        0x514444
        0x454410
        0x1456041
        0x511041
        0x444111
        0x1110645
        0x110451
        0x444451
        0x1114464
        0x514444
        0x1516410
        0x544410
        0x511044
        0x444911
        0x444115
        0x111114
        0x444591
        0x445111
        0x1165104
        0x151104
        0x544411
        0x1141844
        0x141045
        0x444145
        0x1111314
        0x111444
        0x451141
        0x1151124
        0x151104
        0x1452411
        0x450411
        0x441045
        0x1104c45
        0x44451
        0x111445
        0x451461
        0x514441
        0x151c104
        0x544104
        0x510411
        0x1441911
        0x441114
        0x44514
        0x1114711
        0x145110
        0x544441
        0x1544124
        0x544104
        0x512414
        0x110445
        0x441115
        0x1045914
        0x451144
        0x145110
        0x5450c1
        0x151041
        0x114c105
        0x444105
        0x110445
        0x443145
        0x444451
        0x111444
        0x1451311
        0x454410
        0x451041
        0x1444125
        0x444111
        0x1118451
        0x110514
        0x444451
        0x1114c44
        0x115104
        0x514411
        0x15110c4
        0x511044
        0x464111
        0x444115
        0x111114
        0x446511
        0x445111
        0x145104
        0x544611
        0x544411
        0x141044
        0x504195
        0x444145
        0x1119144
        0x111444
        0x451441
        0x1151904
        0x451104
        0x450411
        0x1141245
        0x441045
        0x1124445
        0x44451
        0x114451
        0x453441
        0x514441
        0x514104
        0x1510611
        0x510411
        0x1641051
        0x441114
        0x44514
        0x116511
        0x145111
        0x545041
        0x1544904
        0x544104
        0x510414
        0x441194
        0x441115
        0x1125114
        0x51144
        0x145111
        0x1145841
        0x151041
        0x144105
        0x1110645
        0x110445
        0x441145
        0x1111161
        0x111444
        0x1459111
        0x454410
        0x451041
        0x1444905
        0x444111
        0x110451
        0x444651
        0x444511
        0x1194444
        0x115104
        0x514411
        0x1513044
        0x511044
        0x1110654
        0x111114
        0x444511
        0x1114524
        0x145104
        0x145104
        0x546411
        0x150411    # 1.930004E-39f
        0x141045
        0x504915
        0x504445
        0x111144
        0x445194
        0x451441
        0x1159104
        0x451104
        0x450411
        0x1443045
        0x441045
        0x104445
        0x111945
        0x114451
        0x451444
        0x1451124
        0x514104
        0x1518411
        0x510411
        0x441111
        0x1101c51
        0x104514
        0x114511
        0x5144c4
        0x545041
        0x1564104
        0x544104
        0x510414
        0x443114
        0x441115
        0x105114
        0x145311
        0x51111
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;-><init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;-><init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    const/16 v0, 0xb3

    new-array v0, v0, [I

    const/16 v1, 0x180

    aput v1, v0, v3

    const/16 v1, 0x2e3

    aput v1, v0, v4

    const/16 v1, 0x445

    aput v1, v0, v5

    const/16 v1, 0x5c5

    aput v1, v0, v6

    const/16 v1, 0x727

    aput v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0x889

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa09

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb6b

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xcce

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe4e

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xfb1

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1131

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1293

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x13f5

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1574

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x16d7

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x1839

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x19b9

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1b1c

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1c9c

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x1dfe

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x1f61

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x20e0

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x2242

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x23a5

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2525

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x2687

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x27ea

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x296a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2acc

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x2c4c

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x2dae

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2f10

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x3090

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x31f2

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3355

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x34d5

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x3638

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37b8

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x391a

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x3a7c

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3bfc

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3d5e

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3ec0

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x4041

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x41a3

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x4306

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x4486

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x45e8

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x4767

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x48c9

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x4a2c

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4bac

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x4d0f

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x4e71

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4ff1

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x5153

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x52d3

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x5435

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x5597

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x5717

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x587a

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x59dc

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x5b5d

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x5cbf

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x5e21

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x5fa1

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x6103

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x6283

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x63e5

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x6548

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x66c8

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x682a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x698d

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x6b0d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x6c6f

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x6dee

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x6f51

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x70b3

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x7233

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x7396

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x74f8

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x7678

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x77db

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x793c

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x7abc

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x7c1f

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x7d9f

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x7f01

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x8064

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x81e4

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x8346

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x84a8

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x8628

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x878a

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x890a

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x8a6c

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x8bcf

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x8d4f

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x8eb2

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x9014

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x9194

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x92f6

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x9476

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x95d8

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x973a

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x98ba

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x9a1d

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x9b80

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x9d00

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x9e62

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x9fc4

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xa143

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xa2a6

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xa426

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xa588

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xa6eb

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xa86b

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xa9cd

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xab2f

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xacaf

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xae11

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xaf74

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xb0f4

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xb256

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xb3d7

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xb539

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xb69b

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xb81b

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xb97d

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xbadf

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xbc5f

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xbdc2

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xbf42

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xc0a4

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xc207

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xc387

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xc4e9

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xc669

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xc7cb

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xc92e

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xcaae

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xcc10

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0xcd72

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xcef2

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xd054

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xd1b6

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xd336

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xd499

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xd5fb

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xd77b

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xd8de

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xda5e

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xdbc0

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xdd22

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xdea2

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xe004

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xe166

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xe2e6

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xe449

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xe5ac

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xe72c

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xe88e

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xea0e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xeb70

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xecd2

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xee52

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xefb4

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xf117

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xf297

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xf3fa

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xf57a

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xf6dc

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xf83e

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0xf9bd

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xfb20

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xfc82

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xfe02

    aput v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    .line 132
    const/16 v0, 0xb3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonthData:[I

    .line 133
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gi\u00e1p"

    aput-object v2, v0, v1

    const-string v1, "\u1ea4t"

    aput-object v1, v0, v3

    const-string v1, "B\u00ednh"

    aput-object v1, v0, v4

    const-string v1, "\u0110inh"

    aput-object v1, v0, v5

    const-string v1, "M\u1eadu"

    aput-object v1, v0, v6

    const-string v1, "K\u1ef7"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Canh"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "T\u00e2n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Nh\u00e2m"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Qu\u00fd"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->CanArr:[Ljava/lang/String;

    .line 134
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "T\u00fd"

    aput-object v2, v0, v1

    const-string v1, "S\u1eedu"

    aput-object v1, v0, v3

    const-string v1, "D\u1ea7n"

    aput-object v1, v0, v4

    const-string v1, "M\u00e3o"

    aput-object v1, v0, v5

    const-string v1, "Th\u00ecn"

    aput-object v1, v0, v6

    const-string v1, "T\u1ef5"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Ng\u1ecd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "M\u00f9i"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Th\u00e2n"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "D\u1eadu"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Tu\u1ea5t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "H\u1ee3i"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->ChiArr:[Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mContext:Landroid/content/Context;

    .line 78
    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0x459444
        0x514444
        0x454410
        0x1456041
        0x511041
        0x444111
        0x1110645
        0x110451
        0x444451
        0x1114464
        0x514444
        0x1516410
        0x544410
        0x511044
        0x444911
        0x444115
        0x111114
        0x444591
        0x445111
        0x1165104
        0x151104
        0x544411
        0x1141844
        0x141045
        0x444145
        0x1111314
        0x111444
        0x451141
        0x1151124
        0x151104
        0x1452411
        0x450411
        0x441045
        0x1104c45
        0x44451
        0x111445
        0x451461
        0x514441
        0x151c104
        0x544104
        0x510411
        0x1441911
        0x441114
        0x44514
        0x1114711
        0x145110
        0x544441
        0x1544124
        0x544104
        0x512414
        0x110445
        0x441115
        0x1045914
        0x451144
        0x145110
        0x5450c1
        0x151041
        0x114c105
        0x444105
        0x110445
        0x443145
        0x444451
        0x111444
        0x1451311
        0x454410
        0x451041
        0x1444125
        0x444111
        0x1118451
        0x110514
        0x444451
        0x1114c44
        0x115104
        0x514411
        0x15110c4
        0x511044
        0x464111
        0x444115
        0x111114
        0x446511
        0x445111
        0x145104
        0x544611
        0x544411
        0x141044
        0x504195
        0x444145
        0x1119144
        0x111444
        0x451441
        0x1151904
        0x451104
        0x450411
        0x1141245
        0x441045
        0x1124445
        0x44451
        0x114451
        0x453441
        0x514441
        0x514104
        0x1510611
        0x510411
        0x1641051
        0x441114
        0x44514
        0x116511
        0x145111
        0x545041
        0x1544904
        0x544104
        0x510414
        0x441194
        0x441115
        0x1125114
        0x51144
        0x145111
        0x1145841
        0x151041
        0x144105
        0x1110645
        0x110445
        0x441145
        0x1111161
        0x111444
        0x1459111
        0x454410
        0x451041
        0x1444905
        0x444111
        0x110451
        0x444651
        0x444511
        0x1194444
        0x115104
        0x514411
        0x1513044
        0x511044
        0x1110654
        0x111114
        0x444511
        0x1114524
        0x145104
        0x145104
        0x546411
        0x150411    # 1.930004E-39f
        0x141045
        0x504915
        0x504445
        0x111144
        0x445194
        0x451441
        0x1159104
        0x451104
        0x450411
        0x1443045
        0x441045
        0x104445
        0x111945
        0x114451
        0x451444
        0x1451124
        0x514104
        0x1518411
        0x510411
        0x441111
        0x1101c51
        0x104514
        0x114511
        0x5144c4
        0x545041
        0x1564104
        0x544104
        0x510414
        0x443114
        0x441115
        0x105114
        0x145311
        0x51111
    .end array-data
.end method

.method private ToAmLich(III)V
    .locals 13
    .param p1, "N"    # I
    .param p2, "T"    # I
    .param p3, "nam"    # I

    .prologue
    .line 154
    const/4 v7, 0x0

    .line 155
    .local v7, "i":I
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 156
    .local v9, "j":I
    const/4 v12, 0x0

    .line 157
    .local v12, "l":I
    const/16 v1, 0x759

    const/4 v2, 0x1

    const/16 v3, 0x1e

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->cal_DayDifference(IIIIII)I

    move-result v0

    neg-int v10, v0

    .line 160
    .local v10, "j1":I
    :cond_0
    add-int v0, v7, v9

    div-int/lit8 v11, v0, 0x2

    .line 161
    .local v11, "k":I
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    aget v0, v0, v11

    if-ge v10, v0, :cond_2

    .line 162
    add-int/lit8 v9, v11, -0x1

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    aget v0, v0, v9

    if-eq v10, v0, :cond_1

    if-le v7, v9, :cond_0

    .line 167
    :cond_1
    iput v9, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYear:I

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonth:I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chLeapMonth:Z

    .line 170
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYearData:[I

    iget v1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYear:I

    aget v0, v0, v1

    sub-int/2addr v10, v0

    .line 171
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonthData:[I

    iget v1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYear:I

    aget v12, v0, v1

    .line 173
    :goto_1
    rem-int/lit8 v0, v12, 0x4

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v8, v0, 0x1d

    .local v8, "i1":I
    if-ge v10, v8, :cond_3

    .line 187
    add-int/lit8 v0, v10, 0x1

    iput v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chDay:I

    .line 188
    return-void

    .line 164
    .end local v8    # "i1":I
    :cond_2
    add-int/lit8 v7, v11, 0x1

    goto :goto_0

    .line 175
    .restart local v8    # "i1":I
    :cond_3
    sub-int/2addr v10, v8

    .line 176
    div-int/lit8 v12, v12, 0x4

    .line 177
    rem-int/lit8 v0, v12, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chLeapMonth:Z

    .line 180
    iget v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonth:I

    goto :goto_1

    .line 184
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chLeapMonth:Z

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->updateAmLich()V

    return-void
.end method

.method static synthetic access$1(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cal_DayDifference(IIIIII)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "N"    # I
    .param p5, "T"    # I
    .param p6, "nam"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->numDayAfterOrigin(III)I

    move-result v0

    invoke-direct {p0, p6, p5, p4}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->numDayAfterOrigin(III)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getcan()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->CanArr:[Ljava/lang/String;

    iget v1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYear:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getchi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->ChiArr:[Ljava/lang/String;

    iget v1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chYear:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getngay()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chDay:I

    return v0
.end method

.method private getthang()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chMonth:I

    return v0
.end method

.method private isLeapMonth()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->chLeapMonth:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isLeapyear(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 137
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private numDayAfterOrigin(III)I
    .locals 6
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I

    .prologue
    const/4 v5, 0x2

    .line 142
    const/16 v3, 0xe

    new-array v0, v3, [I

    const/16 v3, 0x1f

    aput v3, v0, v5

    const/4 v3, 0x3

    const/16 v4, 0x3b

    aput v4, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x5a

    aput v4, v0, v3

    const/4 v3, 0x5

    const/16 v4, 0x78

    aput v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x97

    aput v4, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0xb5

    aput v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0xd4

    aput v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0xf3

    aput v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x111

    aput v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0x130

    aput v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0x14e

    aput v4, v0, v3

    const/16 v3, 0xd

    const/16 v4, 0x16d

    aput v4, v0, v3

    .line 143
    .local v0, "dayElapsed":[I
    add-int/lit8 v1, p1, -0x1

    .end local p1    # "i":I
    .local v1, "i":I
    move v2, p1

    .line 144
    .local v2, "l":I
    if-le p2, v5, :cond_0

    invoke-direct {p0, v2}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->isLeapyear(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    mul-int/lit16 v4, v1, 0x16d

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x64

    sub-int/2addr v3, v4

    div-int/lit16 v4, v1, 0x190

    add-int/2addr v3, v4

    aget v4, v0, p2

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, -0x1

    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    const/4 v0, 0x1

    .line 46
    .local v0, "bool":Z
    iget-boolean v2, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mUpdating:Z

    if-eq v0, v2, :cond_0

    .line 48
    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mUpdating:Z

    .line 49
    if-nez v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v1, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->updateAmLich()V

    goto :goto_0
.end method

.method private updateAmLich()V
    .locals 8

    .prologue
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 113
    .local v0, "c":Ljava/util/Calendar;
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 114
    .local v4, "mNgay":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 115
    .local v5, "mThang":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 117
    .local v3, "mNam":I
    new-instance v2, Ljava/util/Date;

    add-int/lit16 v6, v3, -0x76c

    invoke-direct {v2, v6, v5, v4}, Ljava/util/Date;-><init>(III)V

    .line 118
    .local v2, "mCurrDate":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    .local v1, "dft":Ljava/text/SimpleDateFormat;
    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v4, v6, v3}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->ToAmLich(III)V

    .line 121
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->isLeapMonth()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getngay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getthang()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(N) N\u0103m "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getcan()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getchi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getngay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getthang()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " N\u0103m "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getcan()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->getchi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 84
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->setUpdates()V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 91
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->setUpdates()V

    .line 92
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->setUpdates()V

    .line 99
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 105
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->setUpdates()V

    .line 106
    return-void
.end method
