.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_DEACTIVATED_WITH_ACCOUNT:I = 0x3

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field private static final RC_VT_VALID_SIZE:I = 0x20

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0xa

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x8

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x9

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"

.field private static final USE_SAMSUNG_ACCOUNT:I = 0x0

.field private static final USE_VERIFICATION_TOKEN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 316
    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    .line 317
    return-void
.end method

.method private toHex([B)Ljava/lang/String;
    .registers 7
    .param p1, "bytes"    # [B

    .prologue
    .line 406
    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_7

    .line 407
    :cond_5
    const/4 v3, 0x0

    .line 416
    :goto_6
    return-object v3

    .line 410
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 412
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_10
    array-length v3, p1

    if-ge v2, v3, :cond_3e

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "hexNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 416
    .end local v0    # "hexNumber":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6
.end method


# virtual methods
.method public disable([B)I
    .registers 9
    .param p1, "vt"    # [B

    .prologue
    .line 768
    if-eqz p1, :cond_7

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_9

    .line 769
    :cond_7
    const/4 v2, -0x8

    .line 791
    :cond_8
    :goto_8
    return v2

    .line 771
    :cond_9
    invoke-virtual {p0}, getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    .line 772
    const/4 v2, -0x2

    goto :goto_8

    .line 776
    :cond_12
    :try_start_12
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1d} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_43

    move-result v2

    .line 788
    .local v2, "ret":I
    if-eqz v2, :cond_8

    .line 789
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 778
    .end local v2    # "ret":I
    :catch_3f
    move-exception v1

    .line 780
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_8

    .line 782
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    const/16 v2, -0xa

    goto :goto_8
.end method

.method public disableWithAccountId(Ljava/lang/String;)I
    .registers 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 798
    if-nez p1, :cond_4

    .line 799
    const/4 v2, -0x8

    .line 821
    :cond_3
    :goto_3
    return v2

    .line 801
    :cond_4
    invoke-virtual {p0}, getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    .line 802
    const/4 v2, -0x2

    goto :goto_3

    .line 806
    :cond_d
    :try_start_d
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_14} :catch_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_3a

    move-result v2

    .line 818
    .local v2, "ret":I
    if-eqz v2, :cond_3

    .line 819
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableWithAccountId() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 808
    .end local v2    # "ret":I
    :catch_36
    move-exception v1

    .line 810
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_3

    .line 812
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_3a
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    const/16 v2, -0xa

    goto :goto_3
.end method

.method public enable([B)I
    .registers 9
    .param p1, "rc"    # [B

    .prologue
    const/4 v5, 0x1

    .line 725
    if-eqz p1, :cond_8

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_a

    .line 726
    :cond_8
    const/4 v2, -0x8

    .line 748
    :cond_9
    :goto_9
    return v2

    .line 728
    :cond_a
    invoke-virtual {p0}, getServiceSupport()I

    move-result v3

    if-eq v3, v5, :cond_12

    .line 729
    const/4 v2, -0x2

    goto :goto_9

    .line 733
    :cond_12
    :try_start_12
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1d} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_43

    move-result v2

    .line 745
    .local v2, "ret":I
    if-eqz v2, :cond_9

    .line 746
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 735
    .end local v2    # "ret":I
    :catch_3f
    move-exception v1

    .line 737
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_9

    .line 739
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    const/16 v2, -0xa

    goto :goto_9
.end method

.method public getErrorCode()I
    .registers 5

    .prologue
    .line 659
    :try_start_0
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b

    move-result v1

    .line 671
    :goto_6
    return v1

    .line 661
    :catch_7
    move-exception v2

    .line 663
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    goto :goto_6

    .line 665
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    const/16 v1, -0xa

    goto :goto_6
.end method

.method public getFlag(I)I
    .registers 8
    .param p1, "flag"    # I

    .prologue
    .line 439
    :try_start_0
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2e

    move-result v2

    .line 451
    .local v2, "ret":I
    const/4 v3, 0x2

    if-gt v2, v3, :cond_b

    if-gez v2, :cond_29

    .line 452
    :cond_b
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v2    # "ret":I
    :cond_29
    :goto_29
    return v2

    .line 441
    :catch_2a
    move-exception v1

    .line 443
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_29

    .line 445
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_2e
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const/16 v2, -0xa

    goto :goto_29
.end method

.method public getRandom()[B
    .registers 8

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 914
    .local v0, "buffer":[B
    invoke-virtual {p0}, getServiceSupport()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_11

    .line 916
    const-string v4, "ReactiveServiceManager"

    const-string v5, "Invalid operation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v4, 0x0

    .line 945
    :goto_10
    return-object v4

    .line 922
    :cond_11
    :try_start_11
    iget-object v4, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v4}, Lcom/samsung/android/service/reactive/IReactiveService;->getRandom()[B
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_16} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_42

    move-result-object v0

    .line 924
    if-nez v0, :cond_3c

    .line 925
    const/4 v3, -0x6

    .line 939
    .local v3, "ret":I
    :goto_1a
    if-gez v3, :cond_49

    .line 940
    const-string v4, "ReactiveServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRandom() : error code["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    move-object v4, v0

    .line 945
    goto :goto_10

    .line 927
    .end local v3    # "ret":I
    :cond_3c
    const/4 v3, 0x0

    .restart local v3    # "ret":I
    goto :goto_1a

    .line 929
    .end local v3    # "ret":I
    :catch_3e
    move-exception v2

    .line 931
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/16 v3, -0x9

    .line 937
    .restart local v3    # "ret":I
    goto :goto_1a

    .line 933
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    .end local v3    # "ret":I
    :catch_42
    move-exception v1

    .line 935
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    const/16 v3, -0xa

    .restart local v3    # "ret":I
    goto :goto_1a

    .line 943
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_49
    const-string v4, "ReactiveServiceManager"

    const-string v5, "Success of generate random numbers."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public getRawServiceValueForAtCommand()I
    .registers 4

    .prologue
    .line 392
    :try_start_0
    iget-object v2, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v2}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b

    move-result v2

    .line 401
    :goto_6
    return v2

    .line 394
    :catch_7
    move-exception v1

    .line 396
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_6

    .line 398
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    const/16 v2, -0xa

    goto :goto_6
.end method

.method public getServiceSupport()I
    .registers 7

    .prologue
    .line 350
    :try_start_0
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_27

    move-result v2

    .line 362
    .local v2, "supported":I
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    packed-switch v2, :pswitch_data_34

    .line 379
    :pswitch_21
    const/4 v3, 0x0

    .end local v2    # "supported":I
    :goto_22
    return v3

    .line 352
    :catch_23
    move-exception v1

    .line 354
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v3, -0x9

    goto :goto_22

    .line 356
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_27
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    const/16 v3, -0xa

    goto :goto_22

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "supported":I
    :pswitch_2e
    const/4 v3, 0x1

    goto :goto_22

    .line 371
    :pswitch_30
    const/4 v3, 0x2

    goto :goto_22

    .line 375
    :pswitch_32
    const/4 v3, 0x3

    goto :goto_22

    .line 364
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
        :pswitch_21
        :pswitch_30
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public getStatus()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 687
    invoke-virtual {p0}, isConnected()Z

    move-result v2

    if-nez v2, :cond_11

    .line 689
    const-string v2, "ReactiveServiceManager"

    const-string v3, "ReactiveService is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v0, -0x9

    .line 705
    :cond_10
    :goto_10
    return v0

    .line 693
    :cond_11
    invoke-virtual {p0}, getServiceSupport()I

    move-result v1

    .line 695
    .local v1, "which":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 696
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, getFlag(I)I

    move-result v0

    .line 703
    .local v0, "ret":I
    :goto_1d
    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    .line 698
    .end local v0    # "ret":I
    :cond_21
    if-ne v1, v3, :cond_28

    .line 699
    invoke-virtual {p0, v3}, getFlag(I)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_1d

    .line 701
    .end local v0    # "ret":I
    :cond_28
    const/4 v0, -0x3

    goto :goto_10
.end method

.method public getString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 478
    :try_start_1
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v2

    .line 491
    :goto_7
    return-object v2

    .line 480
    :catch_8
    move-exception v1

    .line 482
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "getString() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 485
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_11
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_6

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeString()I
    .registers 7

    .prologue
    .line 550
    :try_start_0
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->removeString()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2c

    move-result v2

    .line 562
    .local v2, "ret":I
    if-gez v2, :cond_33

    .line 563
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v2    # "ret":I
    :goto_27
    return v2

    .line 552
    :catch_28
    move-exception v1

    .line 554
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_27

    .line 556
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_2c
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    const/16 v2, -0xa

    goto :goto_27

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_33
    const-string v3, "ReactiveServiceManager"

    const-string/jumbo v4, "removeString Success "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public sessionAccept([B)[B
    .registers 7
    .param p1, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 582
    if-nez p1, :cond_b

    .line 584
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccept() : Invalid argument"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_a
    return-object v2

    .line 590
    :cond_b
    :try_start_b
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v2

    .local v2, "ret":[B
    goto :goto_a

    .line 592
    .end local v2    # "ret":[B
    :catch_12
    move-exception v1

    .line 594
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccpet() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 597
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public sessionComplete([B)I
    .registers 8
    .param p1, "input"    # [B

    .prologue
    .line 621
    if-nez p1, :cond_4

    .line 622
    const/4 v2, -0x8

    .line 641
    :cond_3
    :goto_3
    return v2

    .line 626
    :cond_4
    :try_start_4
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_30

    move-result v2

    .line 638
    .local v2, "ret":I
    if-eqz v2, :cond_3

    .line 639
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessionComplete() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 628
    .end local v2    # "ret":I
    :catch_2c
    move-exception v1

    .line 630
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_3

    .line 632
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_30
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    const/16 v2, -0xa

    goto :goto_3
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 6
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v0, "ReactiveServiceManager"

    const-string/jumbo v1, "setFlag() - No longer used API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, -0x2

    return v0
.end method

.method public setString(Ljava/lang/String;)I
    .registers 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 509
    if-nez p1, :cond_4

    .line 510
    const/4 v2, -0x8

    .line 531
    :goto_3
    return v2

    .line 514
    :cond_4
    :try_start_4
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_30

    move-result v2

    .line 526
    .local v2, "ret":I
    if-gez v2, :cond_37

    .line 527
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 516
    .end local v2    # "ret":I
    :catch_2c
    move-exception v1

    .line 518
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_3

    .line 520
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_30
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    const/16 v2, -0xa

    goto :goto_3

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_37
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters are saved."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public verify([B)I
    .registers 8
    .param p1, "vt"    # [B

    .prologue
    const/4 v5, 0x1

    .line 842
    if-eqz p1, :cond_8

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_a

    .line 843
    :cond_8
    const/4 v2, -0x8

    .line 868
    :goto_9
    return v2

    .line 845
    :cond_a
    invoke-virtual {p0}, getServiceSupport()I

    move-result v3

    if-eq v3, v5, :cond_12

    .line 846
    const/4 v2, -0x2

    goto :goto_9

    .line 851
    :cond_12
    :try_start_12
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, toHex([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1c} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_43

    move-result v2

    .line 863
    .local v2, "ret":I
    if-gez v2, :cond_4a

    .line 864
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verify() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 853
    .end local v2    # "ret":I
    :catch_3f
    move-exception v1

    .line 855
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_9

    .line 857
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    const/16 v2, -0xa

    goto :goto_9

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_4a
    const-string v3, "ReactiveServiceManager"

    const-string v4, "Verification success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public verifyWithAccountId(Ljava/lang/String;)I
    .registers 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 875
    if-nez p1, :cond_4

    .line 876
    const/4 v2, -0x8

    .line 900
    :goto_3
    return v2

    .line 878
    :cond_4
    invoke-virtual {p0}, getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    .line 879
    const/4 v2, -0x2

    goto :goto_3

    .line 883
    :cond_d
    :try_start_d
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_13} :catch_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_3a

    move-result v2

    .line 895
    .local v2, "ret":I
    if-gez v2, :cond_41

    .line 896
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyWithAccountId() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 885
    .end local v2    # "ret":I
    :catch_36
    move-exception v1

    .line 887
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_3

    .line 889
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_3a
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 892
    const/16 v2, -0xa

    goto :goto_3

    .line 898
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_41
    const-string v3, "ReactiveServiceManager"

    const-string v4, "Verification with id, success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
