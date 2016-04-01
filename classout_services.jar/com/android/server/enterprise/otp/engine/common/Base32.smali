.class public final Lcom/android/server/enterprise/otp/engine/common/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final base32Chars:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field private static final base32Lookup:[B

.field private static final errorCanonicalEnd:Ljava/lang/String; = "non canonical bits at end of Base32 string"

.field private static final errorCanonicalLength:Ljava/lang/String; = "non canonical Base32 string length"

.field private static final errorInvalidChar:Ljava/lang/String; = "invalid character in Base32 string"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, base32Lookup:[B

    return-void

    :array_a
    .array-data 1
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 11
    .param p0, "base32"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x8

    packed-switch v8, :pswitch_data_1f4

    .line 80
    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0x8

    new-array v0, v8, [B

    .line 81
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .local v6, "offset":I
    const/4 v2, 0x0

    .line 85
    .local v2, "i":I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1ed

    .line 88
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 89
    .local v4, "lookup":I
    if-ltz v4, :cond_2b

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_3d

    .line 90
    :cond_2b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 78
    .end local v0    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "lookup":I
    .end local v6    # "offset":I
    :pswitch_34
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical Base32 string length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 92
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    .restart local v4    # "lookup":I
    .restart local v6    # "offset":I
    :cond_3d
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 93
    .local v1, "digit":B
    if-ne v1, v9, :cond_4c

    .line 94
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 97
    :cond_4c
    shl-int/lit8 v8, v1, 0x3

    int-to-byte v5, v8

    .line 101
    .local v5, "nextByte":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 102
    if-ltz v4, :cond_5e

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_67

    .line 103
    :cond_5e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 105
    :cond_67
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 106
    if-ne v1, v9, :cond_76

    .line 107
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    :cond_76
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    shr-int/lit8 v8, v1, 0x2

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 111
    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x6

    int-to-byte v5, v8

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_94

    .line 113
    if-eqz v5, :cond_1f1

    .line 114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    :cond_94
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 121
    if-ltz v4, :cond_a3

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_ac

    .line 122
    :cond_a3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    :cond_ac
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 125
    if-ne v1, v9, :cond_bb

    .line 126
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    :cond_bb
    shl-int/lit8 v8, v1, 0x1

    int-to-byte v8, v8

    or-int/2addr v8, v5

    int-to-byte v5, v8

    .line 133
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 134
    if-ltz v4, :cond_cf

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_d8

    .line 135
    :cond_cf
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_d8
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 138
    if-ne v1, v9, :cond_e7

    .line 139
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 142
    :cond_e7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 143
    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v5, v8

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_105

    .line 145
    if-eqz v5, :cond_1ed

    .line 146
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_105
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 153
    if-ltz v4, :cond_114

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_11d

    .line 154
    :cond_114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 156
    :cond_11d
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 157
    if-ne v1, v9, :cond_12c

    .line 158
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 161
    :cond_12c
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    shr-int/lit8 v8, v1, 0x1

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 162
    and-int/lit8 v8, v1, 0x1

    shl-int/lit8 v8, v8, 0x7

    int-to-byte v5, v8

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_14a

    .line 164
    if-eqz v5, :cond_1ee

    .line 165
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 171
    :cond_14a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 172
    if-ltz v4, :cond_159

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_162

    .line 173
    :cond_159
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_162
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 176
    if-ne v1, v9, :cond_171

    .line 177
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    :cond_171
    shl-int/lit8 v8, v1, 0x2

    int-to-byte v8, v8

    or-int/2addr v8, v5

    int-to-byte v5, v8

    .line 184
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 185
    if-ltz v4, :cond_185

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_18e

    .line 186
    :cond_185
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    :cond_18e
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 189
    if-ne v1, v9, :cond_19d

    .line 190
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 193
    :cond_19d
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    shr-int/lit8 v8, v1, 0x3

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 194
    and-int/lit8 v8, v1, 0x7

    shl-int/lit8 v8, v8, 0x5

    int-to-byte v5, v8

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_1bb

    .line 196
    if-eqz v5, :cond_1ec

    .line 197
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 203
    :cond_1bb
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 204
    if-ltz v4, :cond_1ca

    sget-object v8, base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_1d3

    .line 205
    :cond_1ca
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 207
    :cond_1d3
    sget-object v8, base32Lookup:[B

    aget-byte v1, v8, v4

    .line 208
    if-ne v1, v9, :cond_1e2

    .line 209
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 212
    :cond_1e2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    or-int v8, v5, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_16

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1ec
    move v2, v3

    .line 216
    .end local v1    # "digit":B
    .end local v3    # "i":I
    .end local v4    # "lookup":I
    .end local v5    # "nextByte":B
    .restart local v2    # "i":I
    :cond_1ed
    :goto_1ed
    return-object v0

    .end local v2    # "i":I
    .end local v6    # "offset":I
    .restart local v1    # "digit":B
    .restart local v3    # "i":I
    .restart local v4    # "lookup":I
    .restart local v5    # "nextByte":B
    .restart local v7    # "offset":I
    :cond_1ee
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1ed

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1f1
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1ed

    .line 74
    nop

    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_34
        :pswitch_a
        :pswitch_34
        :pswitch_a
        :pswitch_a
        :pswitch_34
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"    # [B

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 226
    .local v0, "base32":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 227
    .local v3, "i":I
    :goto_d
    array-length v5, p0

    if-ge v3, v5, :cond_32

    .line 232
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 233
    .local v1, "currByte":I
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v2, v5, 0x2

    .line 235
    .local v2, "digit":I
    array-length v5, p0

    if-lt v4, v5, :cond_37

    .line 236
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .line 271
    .end local v1    # "currByte":I
    .end local v2    # "digit":I
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 240
    .end local v3    # "i":I
    .restart local v1    # "currByte":I
    .restart local v2    # "digit":I
    .restart local v4    # "i":I
    :cond_37
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v5, p0, v4

    and-int/lit16 v1, v5, 0xff

    .line 241
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x6

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x1

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    and-int/lit8 v5, v1, 0x1

    shl-int/lit8 v2, v5, 0x4

    .line 244
    array-length v5, p0

    if-lt v3, v5, :cond_67

    .line 245
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 249
    :cond_67
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 250
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x4

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v2, v5, 0x1

    .line 252
    array-length v5, p0

    if-lt v4, v5, :cond_8b

    .line 253
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .line 254
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_32

    .line 257
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_8b
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v5, p0, v4

    and-int/lit16 v1, v5, 0xff

    .line 258
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x7

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v2, v5, 0x3

    .line 261
    array-length v5, p0

    if-lt v3, v5, :cond_bc

    .line 262
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_32

    .line 266
    :cond_bc
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 267
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x5

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    and-int/lit8 v6, v1, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_d
.end method
