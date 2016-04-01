.class Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CocktailInfo"
.end annotation


# instance fields
.field final cocktailId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, cocktailId:I

    .line 50
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 51
    return-void
.end method
