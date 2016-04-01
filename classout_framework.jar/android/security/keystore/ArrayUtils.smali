.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .registers 2
    .param p0, "array"    # [B

    .prologue
    .line 36
    if-eqz p0, :cond_c

    array-length v0, p0

    if-lez v0, :cond_c

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_b
    return-object v0

    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p0, :cond_c

    array-length v0, p0

    if-lez v0, :cond_c

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_b
    return-object v0

    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public static concat([BII[BII)[B
    .registers 8
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "arr2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I

    .prologue
    .line 46
    if-nez p2, :cond_7

    .line 47
    invoke-static {p3, p4, p5}, subarray([BII)[B

    move-result-object v0

    .line 54
    :goto_6
    return-object v0

    .line 48
    :cond_7
    if-nez p5, :cond_e

    .line 49
    invoke-static {p0, p1, p2}, subarray([BII)[B

    move-result-object v0

    goto :goto_6

    .line 51
    :cond_e
    add-int v1, p2, p5

    new-array v0, v1, [B

    .line 52
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public static concat([B[B)[B
    .registers 8
    .param p0, "arr1"    # [B
    .param p1, "arr2"    # [B

    .prologue
    const/4 v1, 0x0

    .line 40
    if-eqz p0, :cond_f

    array-length v2, p0

    :goto_4
    if-eqz p1, :cond_11

    array-length v5, p1

    :goto_7
    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, concat([BII[BII)[B

    move-result-object v0

    return-object v0

    :cond_f
    move v2, v1

    goto :goto_4

    :cond_11
    move v5, v1

    goto :goto_7
.end method

.method public static concat([I[I)[I
    .registers 6
    .param p0, "arr1"    # [I
    .param p1, "arr2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 71
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_6
    move-object v0, p1

    .line 79
    :goto_7
    return-object v0

    .line 73
    :cond_8
    if-eqz p1, :cond_d

    array-length v1, p1

    if-nez v1, :cond_f

    :cond_d
    move-object v0, p0

    .line 74
    goto :goto_7

    .line 76
    :cond_f
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 77
    .local v0, "result":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 78
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_7
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p0, :cond_3

    .end local p0    # "array":[Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "array":[Ljava/lang/String;
    :cond_3
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static subarray([BII)[B
    .registers 5
    .param p0, "arr"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 59
    if-nez p2, :cond_5

    .line 60
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 67
    .end local p0    # "arr":[B
    :cond_4
    :goto_4
    return-object p0

    .line 62
    .restart local p0    # "arr":[B
    :cond_5
    if-nez p1, :cond_a

    array-length v1, p0

    if-eq p2, v1, :cond_4

    .line 65
    :cond_a
    new-array v0, p2, [B

    .line 66
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object p0, v0

    .line 67
    goto :goto_4
.end method
