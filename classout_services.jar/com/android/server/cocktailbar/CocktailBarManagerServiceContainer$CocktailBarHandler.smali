.class final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CocktailBarHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1068
    return-void
.end method
