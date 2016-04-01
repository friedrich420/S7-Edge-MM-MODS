.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDataParser"
.end annotation


# instance fields
.field private mCommandID:S

.field private mEnableTlv:Z

.field private mKeyType:I

.field private mRawData:[B

.field private mServiceName:Ljava/lang/String;

.field private mTlvTag:I

.field private mTlvValue:[B

.field private mVersion:B

.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 548
    iput-object p1, p0, this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-byte v0, p0, mVersion:B

    .line 550
    iput-short v0, p0, mCommandID:S

    .line 551
    iput v0, p0, mKeyType:I

    .line 552
    iput v0, p0, mTlvTag:I

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, mEnableTlv:Z

    .line 554
    iput-object v1, p0, mServiceName:Ljava/lang/String;

    .line 555
    iput-object v1, p0, mTlvValue:[B

    .line 556
    iput-object v1, p0, mRawData:[B

    .line 557
    return-void
.end method

.method private ByteArrayToInt([B)I
    .registers 6
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 694
    array-length v2, p1

    if-ge v2, v3, :cond_6

    .line 700
    :goto_5
    return v1

    .line 697
    :cond_6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 698
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 699
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 700
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_5
.end method

.method private ByteArrayToShort([B)S
    .registers 6
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 683
    array-length v2, p1

    if-ge v2, v3, :cond_6

    .line 689
    :goto_5
    return v1

    .line 686
    :cond_6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 687
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 688
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 689
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_5
.end method


# virtual methods
.method public ParserData([B)Z
    .registers 14
    .param p1, "in"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xc

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 601
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 602
    .local v1, "shortTemp":[B
    new-array v0, v9, [B

    .line 605
    .local v0, "intTemp":[B
    array-length v6, p1

    if-ge v6, v10, :cond_f

    .line 677
    :goto_e
    return v4

    .line 609
    :cond_f
    aget-byte v6, p1, v4

    iput-byte v6, p0, mVersion:B

    .line 612
    const/4 v6, 0x2

    invoke-static {p1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 613
    invoke-direct {p0, v1}, ByteArrayToShort([B)S

    move-result v6

    iput-short v6, p0, mCommandID:S

    .line 615
    const-string v6, "DeviceRootKeyServiceSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, mVersion:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CommandID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, mCommandID:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-short v6, p0, mCommandID:S

    packed-switch v6, :pswitch_data_b4

    goto :goto_e

    .line 622
    :pswitch_49
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 623
    invoke-direct {p0, v0}, ByteArrayToInt([B)I

    move-result v4

    iput v4, p0, mKeyType:I

    move v4, v5

    .line 624
    goto :goto_e

    .line 628
    :pswitch_54
    const/4 v6, 0x7

    aget-byte v6, p1, v6

    if-ne v6, v5, :cond_7b

    .line 629
    iput-boolean v5, p0, mEnableTlv:Z

    .line 634
    :goto_5b
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 635
    invoke-direct {p0, v0}, ByteArrayToInt([B)I

    move-result v6

    iput v6, p0, mKeyType:I

    .line 638
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 639
    invoke-direct {p0, v0}, ByteArrayToInt([B)I

    move-result v2

    .line 642
    .local v2, "strSize":I
    new-array v3, v2, [B

    .line 643
    .local v3, "stringTemp":[B
    invoke-static {p1, v10, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 644
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, mServiceName:Ljava/lang/String;

    move v4, v5

    .line 645
    goto :goto_e

    .line 631
    .end local v2    # "strSize":I
    .end local v3    # "stringTemp":[B
    :cond_7b
    iput-boolean v4, p0, mEnableTlv:Z

    goto :goto_5b

    :pswitch_7e
    move v4, v5

    .line 650
    goto :goto_e

    .line 654
    :pswitch_80
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 655
    invoke-direct {p0, v0}, ByteArrayToInt([B)I

    move-result v6

    iput v6, p0, mTlvTag:I

    .line 658
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 659
    invoke-direct {p0, v0}, ByteArrayToInt([B)I

    move-result v2

    .line 662
    .restart local v2    # "strSize":I
    new-array v6, v2, [B

    iput-object v6, p0, mTlvValue:[B

    .line 663
    iget-object v6, p0, mTlvValue:[B

    invoke-static {p1, v10, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v4, v5

    .line 664
    goto/16 :goto_e

    .line 668
    .end local v2    # "strSize":I
    :pswitch_9e
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 669
    invoke-direct {p0, v0}, ByteArrayToInt([B)I

    move-result v2

    .line 672
    .restart local v2    # "strSize":I
    new-array v6, v2, [B

    iput-object v6, p0, mRawData:[B

    .line 673
    iget-object v6, p0, mRawData:[B

    invoke-static {p1, v10, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v4, v5

    .line 674
    goto/16 :goto_e

    .line 617
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_49
        :pswitch_49
        :pswitch_54
        :pswitch_7e
        :pswitch_7e
        :pswitch_80
        :pswitch_9e
    .end packed-switch
.end method

.method public getCommandId()S
    .registers 2

    .prologue
    .line 566
    iget-short v0, p0, mCommandID:S

    return v0
.end method

.method public getEnableTlv()Z
    .registers 2

    .prologue
    .line 581
    iget-boolean v0, p0, mEnableTlv:Z

    return v0
.end method

.method public getKeyType()I
    .registers 2

    .prologue
    .line 571
    iget v0, p0, mKeyType:I

    return v0
.end method

.method public getRawData()[B
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, mRawData:[B

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTlvTag()I
    .registers 2

    .prologue
    .line 576
    iget v0, p0, mTlvTag:I

    return v0
.end method

.method public getTlvValue()[B
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, mTlvValue:[B

    return-object v0
.end method

.method public getVersion()B
    .registers 2

    .prologue
    .line 561
    iget-byte v0, p0, mVersion:B

    return v0
.end method
