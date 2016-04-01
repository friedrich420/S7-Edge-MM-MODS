.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
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

.field private final mPkgMap:Ljava/util/Map;
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

.field private mSeinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 2975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2976
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, mCerts:Ljava/util/Set;

    .line 2977
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, mPkgMap:Ljava/util/Map;

    .line 2978
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 2968
    iget-object v0, p0, mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 2968
    iget-boolean v0, p0, mDefaultStanza:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 2968
    iget-object v0, p0, mCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 2968
    iget-object v0, p0, mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3086
    if-nez p1, :cond_4

    .line 3094
    :cond_3
    :goto_3
    return v0

    .line 3090
    :cond_4
    const-string v1, "\\A[\\.\\w]+\\z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3094
    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 3059
    invoke-direct {p0, p1}, validateValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3061
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3063
    .end local v0    # "err":Ljava/lang/String;
    :cond_1f
    invoke-direct {p0, p2}, validateValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid seinfo value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3065
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3068
    .end local v0    # "err":Ljava/lang/String;
    :cond_3e
    iget-object v2, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3069
    .local v1, "pkgValue":Ljava/lang/String;
    if-eqz v1, :cond_56

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 3070
    const-string v0, "Conflicting seinfo value found"

    .line 3071
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3074
    .end local v0    # "err":Ljava/lang/String;
    :cond_56
    iget-object v2, p0, mPkgMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    return-object p0
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 5
    .param p1, "cert"    # Ljava/lang/String;

    .prologue
    .line 3004
    if-nez p1, :cond_1b

    .line 3005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid signature value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3006
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3009
    .end local v0    # "err":Ljava/lang/String;
    :cond_1b
    iget-object v1, p0, mCerts:Ljava/util/Set;

    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3010
    return-object p0
.end method

.method public build()Lcom/android/server/pm/Policy;
    .registers 5

    .prologue
    .line 3124
    new-instance v1, Lcom/android/server/pm/Policy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V

    .line 3126
    .local v1, "p":Lcom/android/server/pm/Policy;
    # getter for: Lcom/android/server/pm/Policy;->mDefaultStanza:Z
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$500(Lcom/android/server/pm/Policy;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3127
    iget-object v2, v1, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 3128
    const-string v0, "Missing global seinfo tag with default stanza."

    .line 3129
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3131
    .end local v0    # "err":Ljava/lang/String;
    :cond_18
    # getter for: Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$600(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 3132
    const-string v0, "Certs not allowed with default stanza."

    .line 3133
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3135
    .end local v0    # "err":Ljava/lang/String;
    :cond_2a
    iget-object v2, v1, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 3136
    const-string v0, "Inner package mappings not allowed with default stanza."

    .line 3137
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3140
    .end local v0    # "err":Ljava/lang/String;
    :cond_3a
    # getter for: Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$600(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_4c

    .line 3141
    const-string v0, "Missing certs with signer tag. Expecting at least one."

    .line 3142
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3144
    .end local v0    # "err":Ljava/lang/String;
    :cond_4c
    iget-object v2, v1, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-nez v2, :cond_62

    const/4 v2, 0x1

    :goto_51
    iget-object v3, v1, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    if-nez v2, :cond_64

    .line 3145
    const-string v0, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    .line 3147
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3144
    .end local v0    # "err":Ljava/lang/String;
    :cond_62
    const/4 v2, 0x0

    goto :goto_51

    .line 3151
    :cond_64
    return-object v1
.end method

.method public setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 2

    .prologue
    .line 2989
    const/4 v0, 0x1

    iput-boolean v0, p0, mDefaultStanza:Z

    .line 2990
    return-object p0
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 5
    .param p1, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 3028
    invoke-direct {p0, p1}, validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid seinfo value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3030
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3033
    .end local v0    # "err":Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, mSeinfo:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v1, p0, mSeinfo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 3034
    const-string v0, "Duplicate seinfo tag found"

    .line 3035
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3038
    .end local v0    # "err":Ljava/lang/String;
    :cond_33
    iput-object p1, p0, mSeinfo:Ljava/lang/String;

    .line 3039
    return-object p0
.end method
