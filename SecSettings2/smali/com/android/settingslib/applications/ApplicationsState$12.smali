.class final Lcom/android/settingslib/applications/ApplicationsState$12;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1386
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1382
    return-void
.end method
