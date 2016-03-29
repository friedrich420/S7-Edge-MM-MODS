.class Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/shortcut/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutData"
.end annotation


# instance fields
.field enabled:Z

.field mAppLabel:Ljava/lang/String;

.field mComponentName:Landroid/content/ComponentName;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/keyguard/shortcut/ShortcutManager;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/shortcut/ShortcutManager;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/shortcut/ShortcutManager;Lcom/android/keyguard/shortcut/ShortcutManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;
    .param p2, "x1"    # Lcom/android/keyguard/shortcut/ShortcutManager$1;

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;-><init>(Lcom/android/keyguard/shortcut/ShortcutManager;)V

    return-void
.end method
