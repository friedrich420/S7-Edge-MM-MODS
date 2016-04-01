.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final CC_PROPERTY_ENFORCING_VALUE:Ljava/lang/String; = "Enforcing"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCKDOWN_OK:I = 0x0

.field public static final REQUIRED_DNS:I = 0x1

.field public static final REQUIRED_USERNAME_PW:I = 0x2

.field private static final SEC_PRODUCT_FEATURE_SECURITY_SUPPORT_VPN_STRONG_SWAN:Z = true

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x3

.field public static final TYPE_IPSEC_IKEV2_PSK:I = 0x6

.field public static final TYPE_IPSEC_IKEV2_RSA:I = 0x7

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x4

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x5

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x7

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public isPFS:Z

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public ocspServerUrl:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 452
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, name:Ljava/lang/String;

    .line 66
    iput v2, p0, type:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, server:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, username:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, password:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, dnsServers:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, searchDomains:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, routes:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, mppe:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, l2tpSecret:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, ipsecSecret:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, ipsecUserCert:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, ipsecCaCert:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, ipsecServerCert:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, ocspServerUrl:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, isPFS:Z

    .line 83
    iput-boolean v2, p0, saveLogin:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, key:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, name:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, type:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, server:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, username:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, password:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, dnsServers:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, searchDomains:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, routes:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v1

    :goto_82
    iput-boolean v0, p0, mppe:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, l2tpSecret:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecSecret:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecUserCert:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecCaCert:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecServerCert:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ocspServerUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c6

    move v0, v1

    :goto_b9
    iput-boolean v0, p0, saveLogin:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c8

    :goto_c1
    iput-boolean v1, p0, isPFS:Z

    .line 109
    return-void

    :cond_c4
    move v0, v2

    .line 99
    goto :goto_82

    :cond_c6
    move v0, v2

    .line 107
    goto :goto_b9

    :cond_c8
    move v1, v2

    .line 108
    goto :goto_c1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, name:Ljava/lang/String;

    .line 66
    iput v1, p0, type:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, server:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, username:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, password:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, dnsServers:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, searchDomains:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, routes:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, mppe:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, l2tpSecret:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, ipsecSecret:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, ipsecUserCert:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, ipsecCaCert:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, ipsecServerCert:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, ocspServerUrl:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, isPFS:Z

    .line 83
    iput-boolean v1, p0, saveLogin:Z

    .line 86
    iput-object p1, p0, key:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static byteArrayToInt([B)I
    .registers 5
    .param p0, "b"    # [B

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_12

    .line 147
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 148
    .local v1, "shift":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    .end local v1    # "shift":I
    :cond_12
    return v2
.end method

.method private copyStringToByteArray([BILjava/lang/String;)V
    .registers 8
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 284
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 285
    .local v1, "value":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 286
    add-int v2, v0, p2

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 287
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 289
    :cond_16
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .registers 21
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    .line 154
    const/4 v13, 0x0

    .line 155
    .local v13, "valueString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 158
    .local v8, "newFormatProfile":I
    if-nez p0, :cond_6

    .line 159
    const/4 v10, 0x0

    .line 281
    :goto_5
    return-object v10

    .line 162
    :cond_6
    const/16 v16, 0x0

    :try_start_8
    aget-byte v16, p1, v16

    if-nez v16, :cond_3c

    const/16 v16, 0x1

    aget-byte v16, p1, v16

    const/16 v17, 0xf

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    .line 164
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v12, v0, [B

    .line 165
    .local v12, "size_byte":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v7, v0, :cond_2e

    .line 167
    add-int/lit8 v16, v7, 0x2

    aget-byte v16, p1, v16

    aput-byte v16, v12, v7

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 169
    :cond_2e
    invoke-static {v12}, byteArrayToInt([B)I

    move-result v11

    .line 171
    .local v11, "size":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v11, v0, :cond_64

    .line 173
    const/4 v8, 0x1

    .line 185
    .end local v7    # "i":I
    .end local v11    # "size":I
    .end local v12    # "size_byte":[B
    :cond_3c
    :goto_3c
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_c8

    .line 187
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x7

    move/from16 v0, v16

    new-array v9, v0, [B

    .line 189
    .local v9, "new_value":[B
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4e
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_74

    .line 191
    add-int/lit8 v16, v7, 0x7

    aget-byte v16, p1, v16

    aput-byte v16, v9, v7

    .line 192
    add-int/lit8 v16, v7, 0x7

    const/16 v17, 0x0

    aput-byte v17, p1, v16

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 177
    .end local v9    # "new_value":[B
    .restart local v11    # "size":I
    .restart local v12    # "size_byte":[B
    :cond_64
    const-string v16, "VpnProfile"

    const-string v17, "This profile does not match the new format profile!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6b} :catch_6c

    goto :goto_3c

    .line 275
    .end local v7    # "i":I
    .end local v11    # "size":I
    .end local v12    # "size_byte":[B
    :catch_6c
    move-exception v16

    .line 278
    if-eqz v13, :cond_72

    .line 279
    invoke-virtual {v13}, Ljava/lang/String;->clear()V

    .line 281
    :cond_72
    const/4 v10, 0x0

    goto :goto_5

    .line 194
    .restart local v7    # "i":I
    .restart local v9    # "new_value":[B
    :cond_74
    :try_start_74
    new-instance v14, Ljava/lang/String;

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-direct {v14, v9, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v13    # "valueString":Ljava/lang/String;
    .local v14, "valueString":Ljava/lang/String;
    move-object v13, v14

    .line 201
    .end local v7    # "i":I
    .end local v9    # "new_value":[B
    .end local v14    # "valueString":Ljava/lang/String;
    .restart local v13    # "valueString":Ljava/lang/String;
    :goto_7e
    const-string v16, "\u0000"

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "values":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0xf

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a0

    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x11

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d5

    .line 205
    :cond_a0
    invoke-virtual {v13}, Ljava/lang/String;->clear()V

    .line 206
    const-string v16, "VpnProfile"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "values.length("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") is not normal "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 198
    .end local v15    # "values":[Ljava/lang/String;
    :cond_c8
    new-instance v14, Ljava/lang/String;

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v13    # "valueString":Ljava/lang/String;
    .restart local v14    # "valueString":Ljava/lang/String;
    move-object v13, v14

    .end local v14    # "valueString":Ljava/lang/String;
    .restart local v13    # "valueString":Ljava/lang/String;
    goto :goto_7e

    .line 210
    .restart local v15    # "values":[Ljava/lang/String;
    :cond_d5
    new-instance v10, Lcom/android/internal/net/VpnProfile;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, <init>(Ljava/lang/String;)V

    .line 211
    .local v10, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, name:Ljava/lang/String;

    .line 212
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_13a

    .line 213
    const/16 v16, 0x1

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, type:I

    .line 233
    :goto_ff
    iget v0, v10, type:I

    move/from16 v16, v0

    if-ltz v16, :cond_111

    iget v0, v10, type:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1a3

    .line 234
    :cond_111
    invoke-virtual {v13}, Ljava/lang/String;->clear()V

    .line 235
    const-string v16, "VpnProfile"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "profile.type("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v10, type:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") is not normal"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 215
    :cond_13a
    const-string/jumbo v16, "ro.security.vpnpp.release"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "VPNPPRelease":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 217
    .local v4, "ReleaseNum":D
    const-string v16, "VpnProfile"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "ro.security.vpnpp.release -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v16, 0x1

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 219
    .local v2, "ProfileType":I
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    cmpl-double v16, v4, v16

    if-lez v16, :cond_19f

    .line 220
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v2, v0, :cond_17f

    .line 221
    const/16 v16, 0x4

    move/from16 v0, v16

    iput v0, v10, type:I

    goto :goto_ff

    .line 222
    :cond_17f
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v2, v0, :cond_18d

    .line 223
    const/16 v16, 0x5

    move/from16 v0, v16

    iput v0, v10, type:I

    goto/16 :goto_ff

    .line 224
    :cond_18d
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v2, v0, :cond_19b

    .line 225
    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v10, type:I

    goto/16 :goto_ff

    .line 227
    :cond_19b
    iput v2, v10, type:I

    goto/16 :goto_ff

    .line 229
    :cond_19f
    iput v2, v10, type:I

    goto/16 :goto_ff

    .line 239
    .end local v2    # "ProfileType":I
    .end local v3    # "VPNPPRelease":Ljava/lang/String;
    .end local v4    # "ReleaseNum":D
    :cond_1a3
    const-string/jumbo v16, "security.mdpp"

    const-string v17, "Disabled"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "ccModePropertyValue":Ljava/lang/String;
    if-eqz v6, :cond_1e0

    const-string v16, "Enabled"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c2

    const-string v16, "Enforcing"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e0

    .line 246
    :cond_1c2
    iget v0, v10, type:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1da

    iget v0, v10, type:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1e0

    .line 248
    :cond_1da
    invoke-virtual {v13}, Ljava/lang/String;->clear()V

    .line 249
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 253
    :cond_1e0
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x2

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, server:Ljava/lang/String;

    .line 254
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x3

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, username:Ljava/lang/String;

    .line 255
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x4

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, password:Ljava/lang/String;

    .line 256
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x5

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, dnsServers:Ljava/lang/String;

    .line 257
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x6

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, searchDomains:Ljava/lang/String;

    .line 258
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x7

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, routes:Ljava/lang/String;

    .line 259
    const/16 v16, 0x8

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v10, mppe:Z

    .line 260
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x9

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, l2tpSecret:Ljava/lang/String;

    .line 261
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0xa

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, ipsecIdentifier:Ljava/lang/String;

    .line 262
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0xb

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, ipsecSecret:Ljava/lang/String;

    .line 263
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0xc

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, ipsecUserCert:Ljava/lang/String;

    .line 264
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0xd

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v10, ipsecCaCert:Ljava/lang/String;

    .line 265
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2f8

    new-instance v16, Ljava/lang/String;

    const/16 v17, 0xe

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_297
    move-object/from16 v0, v16

    iput-object v0, v10, ipsecServerCert:Ljava/lang/String;

    .line 266
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0xf

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2fb

    new-instance v16, Ljava/lang/String;

    const/16 v17, 0xf

    aget-object v17, v15, v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2af
    move-object/from16 v0, v16

    iput-object v0, v10, ocspServerUrl:Ljava/lang/String;

    .line 267
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2fe

    const/16 v16, 0x10

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    :goto_2ca
    move/from16 v0, v16

    iput-boolean v0, v10, isPFS:Z

    .line 269
    iget-object v0, v10, username:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2e2

    iget-object v0, v10, password:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_301

    :cond_2e2
    const/16 v16, 0x1

    :goto_2e4
    move/from16 v0, v16

    iput-boolean v0, v10, saveLogin:Z

    .line 270
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2e9
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_304

    .line 271
    aget-object v16, v15, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->clear()V

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e9

    .line 265
    .end local v7    # "i":I
    :cond_2f8
    const-string v16, ""

    goto :goto_297

    .line 266
    :cond_2fb
    const-string v16, ""

    goto :goto_2af

    .line 267
    :cond_2fe
    const/16 v16, 0x0

    goto :goto_2ca

    .line 269
    :cond_301
    const/16 v16, 0x0

    goto :goto_2e4

    .line 273
    .restart local v7    # "i":I
    :cond_304
    invoke-virtual {v13}, Ljava/lang/String;->clear()V
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_307} :catch_6c

    goto/16 :goto_5
.end method

.method public static intToByteArray(I)[B
    .registers 3
    .param p0, "integer"    # I

    .prologue
    .line 136
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .registers 15

    .prologue
    .line 293
    const/4 v4, 0x0

    .line 295
    .local v4, "length":I
    new-instance v11, Ljava/lang/Integer;

    iget v12, p0, type:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, "typeString":Ljava/lang/String;
    new-instance v11, Ljava/lang/Boolean;

    iget-boolean v12, p0, mppe:Z

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "mppeString":Ljava/lang/String;
    new-instance v11, Ljava/lang/Boolean;

    iget-boolean v12, p0, isPFS:Z

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "isPFSString":Ljava/lang/String;
    iget-object v11, p0, name:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v4, v11

    .line 300
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 301
    iget-object v11, p0, server:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 302
    iget-boolean v11, p0, saveLogin:Z

    if-eqz v11, :cond_27c

    iget-object v11, p0, username:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    :goto_4f
    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 303
    iget-boolean v11, p0, saveLogin:Z

    if-eqz v11, :cond_27f

    iget-object v11, p0, password:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    :goto_5f
    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 304
    iget-object v11, p0, dnsServers:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 305
    iget-object v11, p0, searchDomains:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 306
    iget-object v11, p0, routes:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 307
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 308
    iget-object v11, p0, l2tpSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 309
    iget-object v11, p0, ipsecIdentifier:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 310
    iget-object v11, p0, ipsecSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 311
    iget-object v11, p0, ipsecUserCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 312
    iget-object v11, p0, ipsecCaCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 313
    iget-object v11, p0, ipsecServerCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 314
    iget-object v11, p0, ocspServerUrl:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 315
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 317
    new-array v0, v4, [B

    .line 318
    .local v0, "encodedProfile":[B
    const/4 v6, 0x0

    .line 320
    .local v6, "offset":I
    iget-object v11, p0, name:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 321
    iget-object v11, p0, name:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 323
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 324
    invoke-direct {p0, v0, v7, v10}, copyStringToByteArray([BILjava/lang/String;)V

    .line 325
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 327
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 328
    iget-object v11, p0, server:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 329
    iget-object v11, p0, server:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 331
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    iget-boolean v11, p0, saveLogin:Z

    if-eqz v11, :cond_282

    .line 332
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 333
    iget-object v11, p0, username:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 334
    iget-object v11, p0, username:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 336
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 337
    iget-object v11, p0, password:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 338
    iget-object v11, p0, password:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 344
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_154
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 345
    iget-object v11, p0, dnsServers:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 346
    iget-object v11, p0, dnsServers:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 348
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 349
    iget-object v11, p0, searchDomains:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 350
    iget-object v11, p0, searchDomains:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 352
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 353
    iget-object v11, p0, routes:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 354
    iget-object v11, p0, routes:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 356
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 357
    invoke-direct {p0, v0, v7, v5}, copyStringToByteArray([BILjava/lang/String;)V

    .line 358
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 360
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 361
    iget-object v11, p0, l2tpSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 362
    iget-object v11, p0, l2tpSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 364
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 365
    iget-object v11, p0, ipsecIdentifier:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 366
    iget-object v11, p0, ipsecIdentifier:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 368
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 369
    iget-object v11, p0, ipsecSecret:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 370
    iget-object v11, p0, ipsecSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 372
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 373
    iget-object v11, p0, ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 374
    iget-object v11, p0, ipsecUserCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 376
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 377
    iget-object v11, p0, ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 378
    iget-object v11, p0, ipsecCaCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 380
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 381
    iget-object v11, p0, ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 382
    iget-object v11, p0, ipsecServerCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 384
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 385
    iget-object v11, p0, ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, copyStringToByteArray([BILjava/lang/String;)V

    .line 386
    iget-object v11, p0, ocspServerUrl:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 388
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 389
    invoke-direct {p0, v0, v7, v3}, copyStringToByteArray([BILjava/lang/String;)V

    .line 391
    add-int/lit8 v9, v4, 0x7

    .line 392
    .local v9, "total_size":I
    const-string v11, "VpnProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile total size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-array v1, v9, [B

    .line 394
    .local v1, "encodedProfile_newformat":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v1, v11

    .line 395
    const/4 v11, 0x1

    const/16 v12, 0xf

    aput-byte v12, v1, v11

    .line 397
    const/4 v11, 0x4

    new-array v8, v11, [B

    .line 398
    .local v8, "size":[B
    invoke-static {v9}, intToByteArray(I)[B

    move-result-object v8

    .line 399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_270
    const/4 v11, 0x4

    if-ge v2, v11, :cond_28e

    .line 401
    add-int/lit8 v11, v2, 0x2

    aget-byte v12, v8, v2

    aput-byte v12, v1, v11

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_270

    .line 302
    .end local v0    # "encodedProfile":[B
    .end local v1    # "encodedProfile_newformat":[B
    .end local v2    # "i":I
    .end local v7    # "offset":I
    .end local v8    # "size":[B
    .end local v9    # "total_size":I
    :cond_27c
    const/4 v11, 0x0

    goto/16 :goto_4f

    .line 303
    :cond_27f
    const/4 v11, 0x0

    goto/16 :goto_5f

    .line 340
    .restart local v0    # "encodedProfile":[B
    .restart local v6    # "offset":I
    :cond_282
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 341
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v7

    goto/16 :goto_154

    .line 403
    .end local v6    # "offset":I
    .restart local v1    # "encodedProfile_newformat":[B
    .restart local v2    # "i":I
    .restart local v7    # "offset":I
    .restart local v8    # "size":[B
    .restart local v9    # "total_size":I
    :cond_28e
    const/4 v11, 0x6

    const/4 v12, 0x0

    aput-byte v12, v1, v11

    .line 408
    const/4 v2, 0x0

    :goto_293
    array-length v11, v0

    if-ge v2, v11, :cond_2a2

    .line 410
    add-int/lit8 v11, v2, 0x7

    aget-byte v12, v0, v2

    aput-byte v12, v1, v11

    .line 411
    const/4 v11, 0x0

    aput-byte v11, v0, v2

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_293

    .line 414
    :cond_2a2
    return-object v1
.end method

.method public isValidLockdownProfile()I
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 424
    :try_start_2
    iget-object v7, p0, server:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 426
    iget-object v7, p0, dnsServers:Ljava/lang/String;

    const-string v8, " +"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_11
    if-ge v3, v4, :cond_1d

    aget-object v1, v0, v3

    .line 427
    .local v1, "dnsServer":Ljava/lang/String;
    iget-object v7, p0, dnsServers:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 429
    .end local v1    # "dnsServer":Ljava/lang/String;
    :cond_1d
    iget-object v7, p0, dnsServers:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 430
    const-string v6, "VpnProfile"

    const-string v7, "DNS required"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_2c
    return v5

    .line 433
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2d
    iget v7, p0, type:I

    if-eq v7, v6, :cond_3f

    iget v7, p0, type:I

    if-eq v7, v5, :cond_3f

    iget v7, p0, type:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3f

    iget v7, p0, type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4c

    .line 438
    :cond_3f
    iget-boolean v7, p0, saveLogin:Z

    if-nez v7, :cond_4c

    .line 439
    const-string v7, "VpnProfile"

    const-string v8, "Username and password required"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4a} :catch_4e

    move v5, v6

    .line 440
    goto :goto_2c

    .line 444
    :cond_4c
    const/4 v5, 0x0

    goto :goto_2c

    .line 446
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_4e
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "VpnProfile"

    const-string v7, "Invalid address"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public wipe()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 470
    iget-object v0, p0, server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 471
    iget-object v0, p0, username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 472
    iget-object v0, p0, password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 473
    iget-object v0, p0, dnsServers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 474
    iget-object v0, p0, searchDomains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 475
    iget-object v0, p0, routes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 476
    iget-object v0, p0, l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 477
    iget-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 478
    iget-object v0, p0, ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 479
    iget-object v0, p0, ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 480
    iget-object v0, p0, ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 481
    iget-object v0, p0, ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 482
    iget-object v0, p0, ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 483
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget v0, p0, type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, mppe:Z

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, saveLogin:Z

    if-eqz v0, :cond_70

    move v0, v1

    :goto_63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, isPFS:Z

    if-eqz v0, :cond_72

    :goto_6a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void

    :cond_6e
    move v0, v2

    .line 122
    goto :goto_34

    :cond_70
    move v0, v2

    .line 130
    goto :goto_63

    :cond_72
    move v1, v2

    .line 131
    goto :goto_6a
.end method
