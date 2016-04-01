.class public Lcom/samsung/ucm/ucmservice/scp/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field public static final CLASS_APPLICATION:B = 0x40t

.field public static final CLASS_CONTEXT_SPECIFIC:B = -0x80t

.field public static final CLASS_PRIVATE:B = -0x40t

.field public static final CLASS_UNIVERSAL:B = 0x0t

.field public static final MASK_CLASS:B = -0x40t

.field public static final MASK_CONSTRUCTED_TAG:B = 0x20t

.field public static final MASK_TAG_VALUE:B = 0x1ft

.field public static final TAG_APPLICATION_AID:I = 0x84

.field public static final TAG_FILE_CONTROL_INFO:I = 0x6f

.field public static final TAG_KEY_INFORMATION_DATA_OBJECT:I = 0xc0

.field public static final TAG_KEY_INFORMATION_TEMPLATE:I = 0xe0

.field public static final TAG_MAX_CMD_LEN:I = 0x9f65

.field public static final TAG_OID:I = 0x6

.field public static final TAG_PROPRIETARY_DATA:I = 0xa5

.field public static final TAG_SCP_OPTIONS:I = 0x64

.field public static final TAG_SECURITY_DOMAIN_MGMT:I = 0x73


# instance fields
.field private mClass:B

.field private mDescription:Ljava/lang/String;

.field private mIsContructed:Z

.field private mLen:I

.field private mValue:I


# direct methods
.method public constructor <init>(B)V
    .registers 5
    .param p1, "tag"    # B

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    and-int/lit8 v0, p1, -0x40

    int-to-byte v0, v0

    iput-byte v0, p0, mClass:B

    .line 94
    and-int/lit8 v0, p1, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1f

    move v0, v1

    :goto_10
    iput-boolean v0, p0, mIsContructed:Z

    .line 96
    iput v1, p0, mLen:I

    .line 97
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, mValue:I

    .line 98
    invoke-virtual {p0}, getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDescription:Ljava/lang/String;

    .line 99
    return-void

    .line 94
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>(S)V
    .registers 4
    .param p1, "tag"    # S

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    iput-byte v0, p0, mClass:B

    .line 103
    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, mIsContructed:Z

    .line 105
    const/4 v0, 0x2

    iput v0, p0, mLen:I

    .line 106
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, mValue:I

    .line 107
    invoke-virtual {p0}, getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDescription:Ljava/lang/String;

    .line 108
    return-void

    .line 103
    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public constructor <init>([BI)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    iput-byte v0, p0, mClass:B

    .line 73
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4e

    move v0, v1

    :goto_14
    iput-boolean v0, p0, mIsContructed:Z

    .line 75
    iput v1, p0, mLen:I

    .line 76
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, mValue:I

    .line 78
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_41

    .line 80
    :cond_26
    iget v0, p0, mLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLen:I

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    iget v0, p0, mValue:I

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, mValue:I

    .line 83
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_26

    .line 85
    :cond_41
    iget v0, p0, mLen:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_50

    .line 86
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v1, "Invalid tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4e
    const/4 v0, 0x0

    goto :goto_14

    .line 88
    :cond_50
    invoke-virtual {p0}, getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDescription:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z
    .registers 4
    .param p1, "t"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .prologue
    .line 125
    invoke-virtual {p1}, getValue()I

    move-result v0

    iget v1, p0, mValue:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    const-string v0, ""

    .line 36
    .local v0, "desc":Ljava/lang/String;
    iget v1, p0, mValue:I

    sparse-switch v1, :sswitch_data_d2

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_1a
    return-object v0

    .line 38
    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_FILE_CONTROL_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    goto :goto_1a

    .line 41
    :sswitch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_APPLICATION_AID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    goto :goto_1a

    .line 44
    :sswitch_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_PROPRIETARY_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    goto :goto_1a

    .line 47
    :sswitch_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_SECURITY_DOMAIN_MGMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    goto :goto_1a

    .line 50
    :sswitch_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_MAX_CMD_LEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    goto :goto_1a

    .line 53
    :sswitch_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    goto :goto_1a

    .line 56
    :sswitch_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_SCP_OPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    goto/16 :goto_1a

    .line 59
    :sswitch_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_KEY_INFORMATION_TEMPLATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    goto/16 :goto_1a

    .line 62
    :sswitch_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG_KEY_INFORMATION_DATA_OBJECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    goto/16 :goto_1a

    .line 36
    :sswitch_data_d2
    .sparse-switch
        0x6 -> :sswitch_7f
        0x64 -> :sswitch_93
        0x6f -> :sswitch_1b
        0x73 -> :sswitch_57
        0x84 -> :sswitch_2f
        0xa5 -> :sswitch_43
        0xc0 -> :sswitch_bd
        0xe0 -> :sswitch_a8
        0x9f65 -> :sswitch_6b
    .end sparse-switch
.end method

.method public getLen()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, mLen:I

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, mValue:I

    return v0
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, mIsContructed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 136
    iget v1, p0, mValue:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, 0x1000000

    add-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, mLen:I

    mul-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-byte v1, p0, mClass:B

    sparse-switch v1, :sswitch_data_e4

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INVALID CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, mIsContructed:Z

    if-eqz v1, :cond_e0

    const-string v1, "CONSTRUCTED"

    :goto_72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0

    .line 140
    :sswitch_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNIVERSAL CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_44

    .line 143
    :sswitch_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "APPLICATION CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_44

    .line 146
    :sswitch_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PRIVATE CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    goto/16 :goto_44

    .line 149
    :sswitch_cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CONTEXT SPECIFIC CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    goto/16 :goto_44

    .line 155
    :cond_e0
    const-string v1, "PRIMITIVE"

    goto :goto_72

    .line 138
    nop

    :sswitch_data_e4
    .sparse-switch
        -0x80 -> :sswitch_cb
        -0x40 -> :sswitch_b6
        0x0 -> :sswitch_8e
        0x40 -> :sswitch_a2
    .end sparse-switch
.end method

.method public write([BI)I
    .registers 7
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I

    .prologue
    .line 129
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v2, p0, mLen:I

    if-gt v0, v2, :cond_18

    .line 130
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outOffset":I
    .local v1, "outOffset":I
    iget v2, p0, mValue:I

    iget v3, p0, mLen:I

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 129
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    .end local v1    # "outOffset":I
    .restart local p2    # "outOffset":I
    goto :goto_1

    .line 132
    :cond_18
    iget v2, p0, mLen:I

    return v2
.end method
