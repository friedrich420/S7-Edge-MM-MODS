.class public Lmf/javax/xml/namespace/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final compatibleSerialVersionUID:J = 0x3d521a30bc76fdffL

.field private static final defaultSerialVersionUID:J = -0x7e9257d203c42294L

.field private static final serialVersionUID:J

.field private static useDefaultSerialVersionUID:Z


# instance fields
.field private final localPart:Ljava/lang/String;

.field private final namespaceURI:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 125
    sput-boolean v3, useDefaultSerialVersionUID:Z

    .line 130
    :try_start_3
    new-instance v2, Lmf/javax/xml/namespace/QName$1;

    invoke-direct {v2}, Lmf/javax/xml/namespace/QName$1;-><init>()V

    .line 129
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "valueUseCompatibleSerialVersionUID":Ljava/lang/String;
    if-eqz v1, :cond_27

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    :goto_19
    sput-boolean v2, useDefaultSerialVersionUID:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_29

    .line 143
    :goto_1b
    sget-boolean v2, useDefaultSerialVersionUID:Z

    if-eqz v2, :cond_2d

    .line 144
    const-wide v2, -0x7e9257d203c42294L

    sput-wide v2, serialVersionUID:J

    .line 148
    :goto_26
    return-void

    :cond_27
    move v2, v3

    .line 136
    goto :goto_19

    .line 137
    :catch_29
    move-exception v0

    .line 139
    .local v0, "exception":Ljava/lang/Exception;
    sput-boolean v3, useDefaultSerialVersionUID:Z

    goto :goto_1b

    .line 146
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_2d
    const-wide v2, 0x3d521a30bc76fdffL    # 2.572492427824108E-13

    sput-wide v2, serialVersionUID:J

    goto :goto_26
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "localPart"    # Ljava/lang/String;

    .prologue
    .line 316
    .line 317
    const-string v0, ""

    .line 319
    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-nez p1, :cond_14

    .line 255
    const-string v0, ""

    iput-object v0, p0, namespaceURI:Ljava/lang/String;

    .line 262
    :goto_9
    if-nez p2, :cond_17

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 264
    const-string/jumbo v1, "local part cannot be \"null\" when creating a QName"

    .line 263
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_14
    iput-object p1, p0, namespaceURI:Ljava/lang/String;

    goto :goto_9

    .line 266
    :cond_17
    iput-object p2, p0, localPart:Ljava/lang/String;

    .line 269
    if-nez p3, :cond_24

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 271
    const-string/jumbo v1, "prefix cannot be \"null\" when creating a QName"

    .line 270
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_24
    iput-object p3, p0, prefix:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmf/javax/xml/namespace/QName;
    .registers 6
    .param p0, "qNameAsString"    # Ljava/lang/String;

    .prologue
    .line 489
    if-nez p0, :cond_a

    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 491
    const-string v2, "cannot create QName from \"null\" or \"\" String"

    .line 490
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 496
    new-instance v1, Lmf/javax/xml/namespace/QName;

    .line 497
    const-string v2, ""

    .line 499
    const-string v3, ""

    .line 496
    invoke-direct {v1, v2, p0, v3}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_19
    return-object v1

    .line 503
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2d

    .line 504
    new-instance v1, Lmf/javax/xml/namespace/QName;

    .line 505
    const-string v2, ""

    .line 507
    const-string v3, ""

    .line 504
    invoke-direct {v1, v2, p0, v3}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 511
    :cond_2d
    const-string/jumbo v1, "{}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-string/jumbo v3, "should be provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_64
    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 524
    .local v0, "endOfNamespaceURI":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_88

    .line 525
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create QName from \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    const-string v3, "\", missing closing \"}\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_88
    new-instance v1, Lmf/javax/xml/namespace/QName;

    .line 531
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 532
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 533
    const-string v4, ""

    .line 530
    invoke-direct {v1, v2, v3, v4}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "objectToTest"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    if-ne p1, p0, :cond_5

    .line 388
    :cond_4
    :goto_4
    return v1

    .line 382
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Lmf/javax/xml/namespace/QName;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 383
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 386
    check-cast v0, Lmf/javax/xml/namespace/QName;

    .line 388
    .local v0, "qName":Lmf/javax/xml/namespace/QName;
    iget-object v3, p0, localPart:Ljava/lang/String;

    iget-object v4, v0, localPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 389
    iget-object v3, p0, namespaceURI:Ljava/lang/String;

    iget-object v4, v0, namespaceURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    .line 388
    goto :goto_4
.end method

.method public getLocalPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, localPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, namespaceURI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 435
    iget-object v0, p0, localPart:Ljava/lang/String;

    .line 437
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
