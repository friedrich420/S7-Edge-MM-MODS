.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field accessInfo:I

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field category:I

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput v0, p0, uid:I

    .line 320
    iput v0, p0, gid:I

    .line 333
    iput v0, p0, mountExternal:I

    .line 389
    invoke-direct {p0, p1}, parseArgs([Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .registers 15
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v3, 0x0

    .line 404
    .local v3, "curArg":I
    const/4 v9, 0x0

    .line 406
    .local v9, "seenRuntimeArgs":Z
    :goto_2
    array-length v10, p1

    if-ge v3, v10, :cond_11

    .line 407
    aget-object v0, p1, v3

    .line 409
    .local v0, "arg":Ljava/lang/String;
    const-string v10, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 410
    add-int/lit8 v3, v3, 0x1

    .line 552
    .end local v0    # "arg":Ljava/lang/String;
    :cond_11
    iget-boolean v10, p0, abiListQuery:Z

    if-eqz v10, :cond_30a

    .line 553
    array-length v10, p1

    sub-int/2addr v10, v3

    if-lez v10, :cond_336

    .line 554
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unexpected arguments after --query-abi-list."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 412
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_21
    const-string v10, "--setuid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 413
    iget-boolean v10, p0, uidSpecified:Z

    if-eqz v10, :cond_35

    .line 414
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 417
    :cond_35
    const/4 v10, 0x1

    iput-boolean v10, p0, uidSpecified:Z

    .line 418
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, uid:I

    .line 406
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 420
    :cond_4d
    const-string v10, "--setgid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 421
    iget-boolean v10, p0, gidSpecified:Z

    if-eqz v10, :cond_61

    .line 422
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 425
    :cond_61
    const/4 v10, 0x1

    iput-boolean v10, p0, gidSpecified:Z

    .line 426
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, gid:I

    goto :goto_4a

    .line 428
    :cond_77
    const-string v10, "--target-sdk-version="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 429
    iget-boolean v10, p0, targetSdkVersionSpecified:Z

    if-eqz v10, :cond_8b

    .line 430
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate target-sdk-version specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 433
    :cond_8b
    const/4 v10, 0x1

    iput-boolean v10, p0, targetSdkVersionSpecified:Z

    .line 434
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, targetSdkVersion:I

    goto :goto_4a

    .line 436
    :cond_a1
    const-string v10, "--enable-debugger"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 437
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, debugFlags:I

    goto :goto_4a

    .line 438
    :cond_b0
    const-string v10, "--enable-safemode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 439
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, debugFlags:I

    goto :goto_4a

    .line 440
    :cond_bf
    const-string v10, "--enable-checkjni"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 441
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, debugFlags:I

    goto/16 :goto_4a

    .line 442
    :cond_cf
    const-string v10, "--enable-jit"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 443
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, debugFlags:I

    goto/16 :goto_4a

    .line 444
    :cond_df
    const-string v10, "--generate-debug-info"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 445
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, debugFlags:I

    goto/16 :goto_4a

    .line 446
    :cond_ef
    const-string v10, "--enable-jni-logging"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ff

    .line 447
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, debugFlags:I

    goto/16 :goto_4a

    .line 448
    :cond_ff
    const-string v10, "--enable-assert"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10f

    .line 449
    iget v10, p0, debugFlags:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, debugFlags:I

    goto/16 :goto_4a

    .line 450
    :cond_10f
    const-string v10, "--runtime-args"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11a

    .line 451
    const/4 v9, 0x1

    goto/16 :goto_4a

    .line 452
    :cond_11a
    const-string v10, "--seinfo="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_141

    .line 453
    iget-boolean v10, p0, seInfoSpecified:Z

    if-eqz v10, :cond_12e

    .line 454
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 457
    :cond_12e
    const/4 v10, 0x1

    iput-boolean v10, p0, seInfoSpecified:Z

    .line 458
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, seInfo:Ljava/lang/String;

    goto/16 :goto_4a

    .line 460
    :cond_141
    const-string v10, "--category="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15d

    .line 461
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, category:I

    goto/16 :goto_4a

    .line 463
    :cond_15d
    const-string v10, "--accessInfo="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_179

    .line 464
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, accessInfo:I

    goto/16 :goto_4a

    .line 467
    :cond_179
    const-string v10, "--capabilities="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d6

    .line 468
    iget-boolean v10, p0, capabilitiesSpecified:Z

    if-eqz v10, :cond_18d

    .line 469
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 472
    :cond_18d
    const/4 v10, 0x1

    iput-boolean v10, p0, capabilitiesSpecified:Z

    .line 473
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "capString":Ljava/lang/String;
    const-string v10, ","

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "capStrings":[Ljava/lang/String;
    array-length v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1ba

    .line 478
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, effectiveCapabilities:J

    .line 479
    iget-wide v10, p0, effectiveCapabilities:J

    iput-wide v10, p0, permittedCapabilities:J

    goto/16 :goto_4a

    .line 481
    :cond_1ba
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, permittedCapabilities:J

    .line 482
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, effectiveCapabilities:J

    goto/16 :goto_4a

    .line 484
    .end local v1    # "capString":Ljava/lang/String;
    .end local v2    # "capStrings":[Ljava/lang/String;
    :cond_1d6
    const-string v10, "--rlimit="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_220

    .line 486
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "limitStrings":[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1fc

    .line 490
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 493
    :cond_1fc
    array-length v10, v6

    new-array v8, v10, [I

    .line 495
    .local v8, "rlimitTuple":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_200
    array-length v10, v6

    if-ge v5, v10, :cond_20e

    .line 496
    aget-object v10, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v5

    .line 495
    add-int/lit8 v5, v5, 0x1

    goto :goto_200

    .line 499
    :cond_20e
    iget-object v10, p0, rlimits:Ljava/util/ArrayList;

    if-nez v10, :cond_219

    .line 500
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, rlimits:Ljava/util/ArrayList;

    .line 503
    :cond_219
    iget-object v10, p0, rlimits:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4a

    .line 504
    .end local v5    # "i":I
    .end local v6    # "limitStrings":[Ljava/lang/String;
    .end local v8    # "rlimitTuple":[I
    :cond_220
    const-string v10, "--setgroups="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_25d

    .line 505
    iget-object v10, p0, gids:[I

    if-eqz v10, :cond_234

    .line 506
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 510
    :cond_234
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "params":[Ljava/lang/String;
    array-length v10, v7

    new-array v10, v10, [I

    iput-object v10, p0, gids:[I

    .line 515
    array-length v10, v7

    add-int/lit8 v5, v10, -0x1

    .restart local v5    # "i":I
    :goto_24e
    if-ltz v5, :cond_4a

    .line 516
    iget-object v10, p0, gids:[I

    aget-object v11, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v5

    .line 515
    add-int/lit8 v5, v5, -0x1

    goto :goto_24e

    .line 518
    .end local v5    # "i":I
    .end local v7    # "params":[Ljava/lang/String;
    :cond_25d
    const-string v10, "--invoke-with"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_282

    .line 519
    iget-object v10, p0, invokeWith:Ljava/lang/String;

    if-eqz v10, :cond_271

    .line 520
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 524
    :cond_271
    add-int/lit8 v3, v3, 0x1

    :try_start_273
    aget-object v10, p1, v3

    iput-object v10, p0, invokeWith:Ljava/lang/String;
    :try_end_277
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_273 .. :try_end_277} :catch_279

    goto/16 :goto_4a

    .line 525
    :catch_279
    move-exception v4

    .line 526
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "--invoke-with requires argument"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 529
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_282
    const-string v10, "--nice-name="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2a6

    .line 530
    iget-object v10, p0, niceName:Ljava/lang/String;

    if-eqz v10, :cond_296

    .line 531
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 534
    :cond_296
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, niceName:Ljava/lang/String;

    goto/16 :goto_4a

    .line 535
    :cond_2a6
    const-string v10, "--mount-external-default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b3

    .line 536
    const/4 v10, 0x1

    iput v10, p0, mountExternal:I

    goto/16 :goto_4a

    .line 537
    :cond_2b3
    const-string v10, "--mount-external-read"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c0

    .line 538
    const/4 v10, 0x2

    iput v10, p0, mountExternal:I

    goto/16 :goto_4a

    .line 539
    :cond_2c0
    const-string v10, "--mount-external-write"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2cd

    .line 540
    const/4 v10, 0x3

    iput v10, p0, mountExternal:I

    goto/16 :goto_4a

    .line 541
    :cond_2cd
    const-string v10, "--query-abi-list"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2da

    .line 542
    const/4 v10, 0x1

    iput-boolean v10, p0, abiListQuery:Z

    goto/16 :goto_4a

    .line 543
    :cond_2da
    const-string v10, "--instruction-set="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2f2

    .line 544
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, instructionSet:Ljava/lang/String;

    goto/16 :goto_4a

    .line 545
    :cond_2f2
    const-string v10, "--app-data-dir="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 546
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, appDataDir:Ljava/lang/String;

    goto/16 :goto_4a

    .line 557
    .end local v0    # "arg":Ljava/lang/String;
    :cond_30a
    if-nez v9, :cond_327

    .line 558
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected argument : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 561
    :cond_327
    array-length v10, p1

    sub-int/2addr v10, v3

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, remainingArgs:[Ljava/lang/String;

    .line 562
    iget-object v10, p0, remainingArgs:[Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, remainingArgs:[Ljava/lang/String;

    array-length v12, v12

    invoke-static {p1, v3, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    :cond_336
    return-void
.end method
