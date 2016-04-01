.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, mCmdNumber:I

    .line 42
    iput p2, p0, mCode:I

    .line 43
    iput-object p3, p0, mMessage:Ljava/lang/String;

    .line 44
    iput-object p4, p0, mRawEvent:Ljava/lang/String;

    .line 45
    iput-object p5, p0, mLogMessage:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, mParsed:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .registers 8
    .param p0, "events"    # [Lcom/android/server/NativeDaemonEvent;
    .param p1, "matchCode"    # I

    .prologue
    .line 175
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 176
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/android/server/NativeDaemonEvent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_1b

    aget-object v1, v0, v2

    .line 177
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, getCode()I

    move-result v5

    if-ne v5, p1, :cond_18

    .line 178
    invoke-virtual {v1}, getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 181
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static isClassUnsolicited(I)Z
    .registers 2
    .param p0, "code"    # I

    .prologue
    .line 110
    const/16 v0, 0x258

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .registers 13
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 131
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "parsed":[Ljava/lang/String;
    array-length v0, v7

    if-ge v0, v9, :cond_14

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Insufficient arguments"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_14
    const/4 v8, 0x0

    .line 140
    .local v8, "skiplength":I
    const/4 v0, 0x0

    :try_start_16
    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    .local v2, "code":I
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_22} :catch_38

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 146
    const/4 v1, -0x1

    .line 147
    .local v1, "cmdNumber":I
    invoke-static {v2}, isClassUnsolicited(I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 148
    array-length v0, v7

    const/4 v4, 0x3

    if-ge v0, v4, :cond_42

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Insufficient arguemnts"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    .end local v1    # "cmdNumber":I
    .end local v2    # "code":I
    :catch_38
    move-exception v6

    .line 143
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing code"

    invoke-direct {v0, v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 152
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "cmdNumber":I
    .restart local v2    # "code":I
    :cond_42
    const/4 v0, 0x1

    :try_start_43
    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_4f} :catch_97

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v8, v0

    .line 159
    :cond_53
    move-object v5, p0

    .line 160
    .local v5, "logMessage":Ljava/lang/String;
    array-length v0, v7

    if-le v0, v9, :cond_8c

    aget-object v0, v7, v9

    const-string/jumbo v4, "{{sensitive}}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 161
    aget-object v0, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v8, v0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v7, v11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " {}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    :cond_8c
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "message":Ljava/lang/String;
    new-instance v0, Lcom/android/server/NativeDaemonEvent;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 154
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "logMessage":Ljava/lang/String;
    :catch_97
    move-exception v6

    .line 155
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing cmdNumber"

    invoke-direct {v0, v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "DEBUG_ROUTINE":Z
    const-string/jumbo v1, "unescapeArgs"

    .line 202
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v6, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 204
    .local v3, "length":I
    const/4 v2, 0x0

    .line 205
    .local v2, "current":I
    const/4 v10, -0x1

    .line 206
    .local v10, "wordEnd":I
    const/4 v7, 0x0

    .line 209
    .local v7, "quoted":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-ne v11, v12, :cond_1b

    .line 210
    const/4 v7, 0x1

    .line 211
    add-int/lit8 v2, v2, 0x1

    .line 213
    :cond_1b
    :goto_1b
    if-ge v2, v3, :cond_7e

    .line 215
    if-eqz v7, :cond_37

    const/16 v8, 0x22

    .line 216
    .local v8, "terminator":C
    :goto_21
    move v10, v2

    .line 217
    :goto_22
    if-ge v10, v3, :cond_3a

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v8, :cond_3a

    .line 218
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_34

    .line 220
    add-int/lit8 v10, v10, 0x1

    .line 222
    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 215
    .end local v8    # "terminator":C
    :cond_37
    const/16 v8, 0x20

    goto :goto_21

    .line 224
    .restart local v8    # "terminator":C
    :cond_3a
    if-le v10, v3, :cond_3d

    move v10, v3

    .line 225
    :cond_3d
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "word":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v2, v11

    .line 227
    if-nez v7, :cond_74

    .line 228
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 233
    :goto_4c
    const-string v11, "\\\\"

    const-string v12, "\\"

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 234
    const-string v11, "\\\""

    const-string v12, "\""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 237
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/16 v11, 0x20

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 241
    .local v5, "nextSpace":I
    const-string v11, " \""

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 245
    .local v4, "nextQuote":I
    const/4 v11, -0x1

    if-le v4, v11, :cond_77

    if-gt v4, v5, :cond_77

    .line 246
    const/4 v7, 0x1

    .line 247
    add-int/lit8 v2, v4, 0x2

    goto :goto_1b

    .line 230
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 249
    .restart local v4    # "nextQuote":I
    .restart local v5    # "nextSpace":I
    :cond_77
    const/4 v7, 0x0

    .line 250
    const/4 v11, -0x1

    if-le v5, v11, :cond_1b

    .line 251
    add-int/lit8 v2, v5, 0x1

    goto :goto_1b

    .line 259
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "terminator":C
    .end local v9    # "word":Ljava/lang/String;
    :cond_7e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    return-object v11
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    .line 119
    iget v0, p0, mCode:I

    if-eq v0, p1, :cond_27

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_27
    return-void
.end method

.method public getCmdNumber()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 191
    iget-object v0, p0, mParsed:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 192
    iget-object v0, p0, mRawEvent:Ljava/lang/String;

    invoke-static {v0}, unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mParsed:[Ljava/lang/String;

    .line 194
    :cond_c
    add-int/lit8 p1, p1, 0x2

    .line 195
    iget-object v0, p0, mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_15

    const/4 v0, 0x0

    .line 196
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_14
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .registers 3

    .prologue
    .line 99
    iget v0, p0, mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_e

    iget v0, p0, mCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassContinue()Z
    .registers 3

    .prologue
    .line 78
    iget v0, p0, mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    iget v0, p0, mCode:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassOk()Z
    .registers 3

    .prologue
    .line 85
    iget v0, p0, mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassServerError()Z
    .registers 3

    .prologue
    .line 92
    iget v0, p0, mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_e

    iget v0, p0, mCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassUnsolicited()Z
    .registers 2

    .prologue
    .line 106
    iget v0, p0, mCode:I

    invoke-static {v0}, isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, mLogMessage:Ljava/lang/String;

    return-object v0
.end method
