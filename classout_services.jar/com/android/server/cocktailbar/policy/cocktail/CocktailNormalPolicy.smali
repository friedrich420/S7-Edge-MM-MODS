.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailNormalPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z
    .registers 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "userId"    # I
    .param p3, "isUpdated"    # Z

    .prologue
    .line 34
    if-eqz p3, :cond_8

    const/16 v0, 0x64

    if-lt p2, v0, :cond_8

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .registers 7
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "userId"    # I
    .param p5, "isUpdated"    # Z

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p5, :cond_e

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p1, :cond_c

    .line 43
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isMatchedPolicy: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_b
    :goto_b
    return v1

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 47
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_b

    .line 48
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    .line 49
    const/4 v1, 0x1

    goto :goto_b
.end method
