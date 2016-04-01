.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field public static final RESPONSE_SKIP:I = 0x1

.field public static final SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0}, <init>()V

    sput-object v0, OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 36
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, <init>(II[B)V

    sput-object v0, ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 39
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0, v3}, <init>(I)V

    sput-object v0, SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 46
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, mResponseCode:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, mPayload:[B

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, mTimeout:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, mResponseCode:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, mPayload:[B

    .line 87
    return-void
.end method

.method private constructor <init>(II[B)V
    .registers 4
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "payload"    # [B

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, mResponseCode:I

    .line 91
    iput p2, p0, mTimeout:I

    .line 92
    iput-object p3, p0, mPayload:[B

    .line 93
    return-void
.end method

.method synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lcom/android/internal/widget/VerifyCredentialResponse$1;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, <init>(II[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "payload"    # [B

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, mPayload:[B

    .line 80
    const/4 v0, 0x0

    iput v0, p0, mResponseCode:I

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, setTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "x1"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1}, setPayload([B)V

    return-void
.end method

.method private setPayload([B)V
    .registers 2
    .param p1, "payload"    # [B

    .prologue
    .line 130
    iput-object p1, p0, mPayload:[B

    .line 131
    return-void
.end method

.method private setTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 126
    iput p1, p0, mTimeout:I

    .line 127
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, mResponseCode:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, mTimeout:I

    return v0
.end method

.method public isOK()Z
    .registers 2

    .prologue
    .line 135
    iget v0, p0, mResponseCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    const-string v0, "Unknowable"

    .line 140
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, mResponseCode:I

    packed-switch v1, :pswitch_data_12

    .line 150
    :goto_7
    return-object v0

    .line 142
    :pswitch_8
    const-string v0, "SUCCESS!!!"

    goto :goto_7

    .line 144
    :pswitch_b
    const-string v0, "FAILED...."

    goto :goto_7

    .line 146
    :pswitch_e
    const-string v0, "SKIPPED..."

    goto :goto_7

    .line 140
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_b
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget v0, p0, mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 99
    iget v0, p0, mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :cond_f
    :goto_f
    return-void

    .line 100
    :cond_10
    iget v0, p0, mResponseCode:I

    if-nez v0, :cond_f

    .line 101
    iget-object v0, p0, mPayload:[B

    if-eqz v0, :cond_f

    .line 102
    iget-object v0, p0, mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_f
.end method
