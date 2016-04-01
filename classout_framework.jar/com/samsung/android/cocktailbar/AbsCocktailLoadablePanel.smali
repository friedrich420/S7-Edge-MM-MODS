.class public abstract Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;,
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    }
.end annotation


# static fields
.field public static final LOADABLE_CONTENT_CLASS:Ljava/lang/String; = "content"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final PANEL_STATE_HIDE:I = 0x1

.field public static final PANEL_STATE_VISIBLE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCocktailContext:Landroid/content/Context;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

.field private mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 91
    iput-object v0, p0, mCocktailContext:Landroid/content/Context;

    .line 93
    iput-object v0, p0, mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 95
    iput-object v0, p0, mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 103
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "cocktailContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 91
    iput-object v0, p0, mCocktailContext:Landroid/content/Context;

    .line 93
    iput-object v0, p0, mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 95
    iput-object v0, p0, mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 113
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, mCocktailContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-object v0
.end method

.method public getOnCocktailClickHander()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onChangedDisplayPolicy(I)V
    .registers 2
    .param p1, "newDisplayPolicy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public onChangedReversedView(Z)V
    .registers 2
    .param p1, "isReversedViewMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    return-void
.end method

.method public abstract onClosePanel()V
.end method

.method public onOrientationChanged(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 169
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    return-void
.end method

.method public setListener(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .prologue
    .line 121
    iput-object p1, p0, mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 122
    return-void
.end method

.method public setOnCocktailClickHander(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .registers 2
    .param p1, "onCocktailClickHandler"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .prologue
    .line 136
    iput-object p1, p0, mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 137
    return-void
.end method
