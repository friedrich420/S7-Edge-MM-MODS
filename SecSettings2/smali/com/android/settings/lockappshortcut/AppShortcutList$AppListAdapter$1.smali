.class Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iput-object p2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->setSelected(Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    invoke-static {v1, v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->access$300(Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    .line 276
    return-void
.end method
