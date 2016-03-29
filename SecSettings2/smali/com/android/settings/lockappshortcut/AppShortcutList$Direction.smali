.class Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;
.super Ljava/lang/Object;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Direction"
.end annotation


# instance fields
.field name_idx:I

.field opposite_name_idx:I

.field status_idx:I

.field final synthetic this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/android/settings/lockappshortcut/AppShortcutList;Ljava/lang/String;)V
    .locals 3
    .param p2, "dr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 77
    iput-object p1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    .line 80
    iput v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    .line 81
    iput v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    .line 84
    iput v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    .line 85
    iput v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    goto :goto_0
.end method
