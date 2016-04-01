.class Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
.super Ljava/lang/Object;
.source "CocktailPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpadatableCocktailInfo"
.end annotation


# instance fields
.field private mCocktailList:Landroid/util/SparseBooleanArray;

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mCocktailList:Landroid/util/SparseBooleanArray;

    .line 222
    iput p1, p0, mUserId:I

    .line 223
    return-void
.end method


# virtual methods
.method public disableUpdate(I)V
    .registers 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 234
    iget-object v0, p0, mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 235
    return-void
.end method

.method public enableUpdate(I)V
    .registers 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 230
    iget-object v0, p0, mCocktailList:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 231
    return-void
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, mUserId:I

    return v0
.end method

.method public isUpdatedCocktail(I)Z
    .registers 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 238
    iget-object v0, p0, mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
