.class final Lcom/android/server/pm/Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Policy$1;,
        Lcom/android/server/pm/Policy$PolicyBuilder;
    }
.end annotation


# instance fields
.field allowCategory:Ljava/lang/String;

.field bbcallowCategory:Ljava/lang/String;

.field bbccategory:I

.field category:I

.field isContainerApp:Z

.field private mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultStanza:Z

.field mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSeinfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2791
    iput-object v1, p0, mSeinfo:Ljava/lang/String;

    .line 2792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPkgMap:Ljava/util/Map;

    .line 2793
    iput v2, p0, category:I

    .line 2794
    iput v2, p0, bbccategory:I

    .line 2795
    iput-object v1, p0, allowCategory:Ljava/lang/String;

    .line 2796
    iput-object v1, p0, bbcallowCategory:Ljava/lang/String;

    .line 2797
    iput-boolean v3, p0, isContainerApp:Z

    .line 2798
    iput-boolean v3, p0, mDefaultStanza:Z

    .line 2799
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mCerts:Ljava/util/Set;

    .line 2800
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 2804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2805
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSeinfo:Ljava/lang/String;

    .line 2806
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mDefaultStanza:Z
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Z

    move-result v0

    iput-boolean v0, p0, mDefaultStanza:Z

    .line 2807
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, mCerts:Ljava/util/Set;

    .line 2808
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$300(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, mPkgMap:Ljava/util/Map;

    .line 2809
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .param p2, "x1"    # Lcom/android/server/pm/Policy$1;

    .prologue
    .line 2778
    invoke-direct {p0, p1}, <init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/Policy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .prologue
    .line 2778
    iget-boolean v0, p0, mDefaultStanza:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/Policy;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .prologue
    .line 2778
    iget-object v0, p0, mCerts:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method checkPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2831
    iget-object v1, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2832
    .local v0, "seinfoValue":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 2836
    .end local v0    # "seinfoValue":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "seinfoValue":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, mSeinfo:Ljava/lang/String;

    goto :goto_a
.end method

.method public getInnerPackages()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2874
    iget-object v0, p0, mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMatchedSeinfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2941
    iget-boolean v2, p0, mDefaultStanza:Z

    if-nez v2, :cond_25

    .line 2943
    iget-object v2, p0, mCerts:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 2944
    .local v0, "certs":[Landroid/content/pm/Signature;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2945
    const/4 v1, 0x0

    .line 2957
    .end local v0    # "certs":[Landroid/content/pm/Signature;
    :cond_18
    :goto_18
    return-object v1

    .line 2950
    .restart local v0    # "certs":[Landroid/content/pm/Signature;
    :cond_19
    iget-object v2, p0, mPkgMap:Ljava/util/Map;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2951
    .local v1, "seinfoValue":Ljava/lang/String;
    if-nez v1, :cond_18

    .line 2957
    .end local v0    # "certs":[Landroid/content/pm/Signature;
    .end local v1    # "seinfoValue":Ljava/lang/String;
    :cond_25
    iget-object v1, p0, mSeinfo:Ljava/lang/String;

    goto :goto_18
.end method

.method getSeinfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2816
    iget-object v0, p0, mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2846
    iget-object v0, p0, mCerts:Ljava/util/Set;

    return-object v0
.end method

.method public hasGlobalSeinfo()Z
    .registers 2

    .prologue
    .line 2883
    iget-object v0, p0, mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasInnerPackages()Z
    .registers 2

    .prologue
    .line 2864
    iget-object v0, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDefaultStanza()Z
    .registers 2

    .prologue
    .line 2855
    iget-boolean v0, p0, mDefaultStanza:Z

    return v0
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 2826
    iget-object v0, p0, mSeinfo:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method putPkg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 2820
    iget-object v0, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    return-void
.end method

.method putSeinfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 2812
    iput-object p1, p0, mSeinfo:Ljava/lang/String;

    .line 2813
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 2888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2889
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-boolean v4, p0, mDefaultStanza:Z

    if-eqz v4, :cond_f

    .line 2890
    const-string/jumbo v4, "defaultStanza=true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2893
    :cond_f
    iget-object v4, p0, mCerts:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    .line 2894
    .local v0, "cert":Landroid/content/pm/Signature;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cert="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xb

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 2897
    .end local v0    # "cert":Landroid/content/pm/Signature;
    :cond_49
    iget-object v4, p0, mSeinfo:Ljava/lang/String;

    if-eqz v4, :cond_66

    .line 2898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seinfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSeinfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    :cond_66
    iget-object v4, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2902
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 2905
    .end local v2    # "name":Ljava/lang/String;
    :cond_a5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
