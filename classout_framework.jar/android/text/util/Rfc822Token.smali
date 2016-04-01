.class public Landroid/text/util/Rfc822Token;
.super Ljava/lang/Object;
.source "Rfc822Token.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, mName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, mAddress:Ljava/lang/String;

    .line 36
    iput-object p3, p0, mComment:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "comment"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 163
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "c":C
    const/16 v4, 0x28

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x29

    if-eq v0, v4, :cond_1c

    if-ne v0, v5, :cond_1f

    .line 169
    :cond_1c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 175
    .end local v0    # "c":C
    :cond_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 143
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_21

    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 146
    .local v0, "c":C
    if-eq v0, v5, :cond_18

    const/16 v4, 0x22

    if-ne v0, v4, :cond_1b

    .line 147
    :cond_18
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    :cond_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 153
    .end local v0    # "c":C
    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 120
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_42

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    .local v0, "c":C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_15

    const/16 v3, 0x5a

    if-le v0, v3, :cond_43

    :cond_15
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1d

    const/16 v3, 0x7a

    if-le v0, v3, :cond_43

    :cond_1d
    const/16 v3, 0x20

    if-eq v0, v3, :cond_43

    const/16 v3, 0x30

    if-lt v0, v3, :cond_29

    const/16 v3, 0x39

    if-le v0, v3, :cond_43

    .line 127
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    .end local v0    # "c":C
    .end local p0    # "name":Ljava/lang/String;
    :cond_42
    return-object p0

    .line 120
    .restart local v0    # "c":C
    .restart local p0    # "name":Ljava/lang/String;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p0, :cond_8

    .line 188
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 190
    :goto_5
    return v0

    .line 188
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 190
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 195
    instance-of v2, p1, Landroid/text/util/Rfc822Token;

    if-nez v2, :cond_6

    .line 199
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 198
    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 199
    .local v0, "other":Landroid/text/util/Rfc822Token;
    iget-object v2, p0, mName:Ljava/lang/String;

    iget-object v3, v0, mName:Ljava/lang/String;

    invoke-static {v2, v3}, stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, mAddress:Ljava/lang/String;

    iget-object v3, v0, mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, mComment:Ljava/lang/String;

    iget-object v3, v0, mComment:Ljava/lang/String;

    invoke-static {v2, v3}, stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 179
    const/16 v0, 0x11

    .line 180
    .local v0, "result":I
    iget-object v1, p0, mName:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 181
    :cond_e
    iget-object v1, p0, mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1c

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 182
    :cond_1c
    iget-object v1, p0, mComment:Ljava/lang/String;

    if-eqz v1, :cond_2a

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, mComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 183
    :cond_2a
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, mAddress:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, mComment:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, mName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, mName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 93
    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-static {v1}, quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_1f
    iget-object v1, p0, mComment:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, mComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 98
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, mComment:Ljava/lang/String;

    invoke-static {v1}, quoteComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_3e
    iget-object v1, p0, mAddress:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_59

    .line 104
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
