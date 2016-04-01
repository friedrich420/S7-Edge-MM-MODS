.class Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

.field free:I

.field keys:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    iput v0, p0, free:I

    iget v0, p0, free:I

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v0, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iget v0, p0, free:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, keys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 7

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    iget-object v1, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v1, v1

    new-array v1, v1, [Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v1, v0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iget-object v1, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    const/4 v2, 0x0

    iget-object v3, v0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    const/4 v4, 0x0

    iget-object v5, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, keys:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, keys:[Ljava/lang/String;

    iget-object v1, p0, keys:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, keys:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, keys:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_2c} :catch_2d

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2c
.end method

.method entrySet()Ljava/util/List;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    iget-object v2, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_24

    const-string v2, ""

    iget-object v3, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    return-object v1
.end method

.method get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;
    .registers 4

    iget-object v0, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0, p1}, index(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected index(Ljava/lang/Object;)I
    .registers 6

    iget-object v1, p0, keys:[Ljava/lang/String;

    array-length v2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    rem-int/2addr v0, v2

    aget-object v3, v1, v0

    if-eqz v3, :cond_16

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    if-ne v0, v2, :cond_25

    const/4 v0, 0x0

    :goto_1a
    aget-object v3, v1, v0

    if-eqz v3, :cond_16

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_16

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V
    .registers 6

    invoke-virtual {p0, p1}, index(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, keys:[Ljava/lang/String;

    aput-object p1, v2, v0

    iget-object v2, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aput-object p2, v2, v0

    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_18
    iget v0, p0, free:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, free:I

    if-nez v0, :cond_2c

    iget-object v0, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v0, v0

    iput v0, p0, free:I

    iget v0, p0, free:I

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, rehash(I)V

    :cond_2c
    return-void
.end method

.method protected rehash(I)V
    .registers 8

    iget-object v0, p0, keys:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, keys:[Ljava/lang/String;

    iget-object v3, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, keys:[Ljava/lang/String;

    new-array v1, p1, [Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v1, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    :goto_f
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_29

    aget-object v0, v2, v1

    if-eqz v0, :cond_2a

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, index(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, keys:[Ljava/lang/String;

    aput-object v0, v5, v4

    iget-object v0, p0, entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v5, v3, v1

    aput-object v5, v0, v4

    move v0, v1

    goto :goto_f

    :cond_29
    return-void

    :cond_2a
    move v0, v1

    goto :goto_f
.end method
