.class public Lcom/android/settings/notification/BlockNotificationList$AppRow;
.super Lcom/android/settings/notification/BlockNotificationList$Row;
.source "BlockNotificationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public banned:Z

.field public first:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public pkg:Ljava/lang/String;

.field public priority:Z

.field public sensitive:Z

.field public settingsIntent:Landroid/content/Intent;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/BlockNotificationList$Row;-><init>(Lcom/android/settings/notification/BlockNotificationList$1;)V

    return-void
.end method
