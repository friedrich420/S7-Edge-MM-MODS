.class public Lcom/android/systemui/recents/RecentsAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "RecentsAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

.field mIsListening:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 63
    new-instance v0, Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;->refreshSearchWidgetView()V

    .line 75
    :cond_0
    return-void
.end method

.method public startListening(Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    .line 46
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 48
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    .line 58
    return-void
.end method
