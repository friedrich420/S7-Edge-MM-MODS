.class public Lcom/samsung/android/app/WhiteListForCategoryOrder;
.super Ljava/lang/Object;
.source "WhiteListForCategoryOrder.java"


# static fields
.field private static final DEBUG:Z

.field private static final SIGNATURE_MAX:I = 0x3

.field private static final SIGNATURE_SAMSUNG_APPLICATION:I = 0x2

.field private static final SIGNATURE_SAMSUNG_PLATFORM:I = 0x1

.field private static final SIGNATURE_SAMSUNG_SHARED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WhiteListForCategoryOrder"

.field private static sInstance:Lcom/samsung/android/app/WhiteListForCategoryOrder;


# instance fields
.field private mSignaturesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, DEBUG:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, sInstance:Lcom/samsung/android/app/WhiteListForCategoryOrder;

    return-void

    .line 29
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSignaturesMap:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mWhiteList:Ljava/util/HashMap;

    return-void
.end method

.method private WhiteListForCategoryOrder()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, setupSignaturesMap()V

    .line 46
    invoke-direct {p0}, setupWhiteList()V

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/WhiteListForCategoryOrder;
    .registers 1

    .prologue
    .line 38
    sget-object v0, sInstance:Lcom/samsung/android/app/WhiteListForCategoryOrder;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/samsung/android/app/WhiteListForCategoryOrder;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/samsung/android/app/WhiteListForCategoryOrder;

    .line 41
    :cond_b
    sget-object v0, sInstance:Lcom/samsung/android/app/WhiteListForCategoryOrder;

    return-object v0
.end method

.method private getSignatures(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1c

    .line 128
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 129
    .local v0, "flag":I
    and-int v3, p1, v0

    if-eqz v3, :cond_19

    .line 130
    iget-object v3, p0, mSignaturesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 133
    .end local v0    # "flag":I
    :cond_1c
    return-object v2
.end method

.method private hasSamsungKey([Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 121
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method private isMatchedSignature([Landroid/content/pm/Signature;I)Z
    .registers 11
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "type"    # I

    .prologue
    .line 137
    invoke-direct {p0, p2}, getSignatures(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    .local v0, "SIGNATURES":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    if-eqz p1, :cond_2e

    if-eqz v0, :cond_2e

    .line 139
    move-object v1, p1

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_c
    if-ge v3, v4, :cond_2e

    aget-object v6, v1, v3

    .line 140
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/Signature;

    .line 141
    .local v5, "s":Landroid/content/pm/Signature;
    if-eqz v5, :cond_14

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 142
    const/4 v7, 0x1

    .line 147
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "len$":I
    .end local v5    # "s":Landroid/content/pm/Signature;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :goto_29
    return v7

    .line 139
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "len$":I
    .restart local v6    # "signature":Landroid/content/pm/Signature;
    :cond_2a
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_c

    .line 147
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :cond_2e
    const/4 v7, 0x0

    goto :goto_29
.end method

.method private setupSignaturesMap()V
    .registers 5

    .prologue
    .line 50
    iget-object v0, p0, mSignaturesMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v0, p0, mSignaturesMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, mSignaturesMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method private setupWhiteList()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method


# virtual methods
.method public isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    const/4 v3, 0x0

    .line 77
    .local v3, "signatureMatch":Z
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v8, 0x40

    invoke-virtual {v1, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 80
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1b

    .line 81
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_1a

    const-string v7, "WhiteListForCategoryOrder"

    const-string v8, "isAllowedToUse : pkgInfo is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1a
    :goto_1a
    return v6

    .line 85
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1b
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x81

    if-eqz v8, :cond_25

    move v6, v7

    .line 87
    goto :goto_1a

    .line 97
    :cond_25
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 98
    .local v4, "signatures":[Landroid/content/pm/Signature;
    invoke-direct {p0, v4}, hasSamsungKey([Landroid/content/pm/Signature;)Z

    move-result v8

    if-eqz v8, :cond_2f

    move v6, v7

    .line 100
    goto :goto_1a

    .line 103
    :cond_2f
    iget-object v7, p0, mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 104
    .local v5, "type":Ljava/lang/Integer;
    if-nez v5, :cond_65

    .line 105
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_1a

    const-string v7, "WhiteListForCategoryOrder"

    const-string v8, "isAllowedToUse : executable manager white lists does not include this App"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_44} :catch_45

    goto :goto_1a

    .line 112
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    .end local v5    # "type":Ljava/lang/Integer;
    :catch_45
    move-exception v0

    .line 113
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_62

    const-string v6, "WhiteListForCategoryOrder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNotAllowedToUse : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_62
    const/4 v3, 0x0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_63
    :goto_63
    move v6, v3

    .line 117
    goto :goto_1a

    .line 108
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "signatures":[Landroid/content/pm/Signature;
    .restart local v5    # "type":Ljava/lang/Integer;
    :cond_65
    :try_start_65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v4, v6}, isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result v3

    .line 109
    if-nez v3, :cond_63

    .line 110
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_63

    const-string v6, "WhiteListForCategoryOrder"

    const-string v7, "isAllowedToUse : executable manager white lists don\'t match this App"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_7a} :catch_45

    goto :goto_63
.end method
