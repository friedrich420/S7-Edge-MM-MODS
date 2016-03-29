.class final Lcom/android/settings/LockscreenNotificationApplist$3;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$3;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/LockscreenNotificationApplist$AppRow;Lcom/android/settings/LockscreenNotificationApplist$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    .param p2, "rhs"    # Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    .prologue
    .line 349
    iget-object v0, p1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$3;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 357
    :goto_0
    return v0

    .line 352
    :cond_0
    const-string v0, "*"

    iget-object v1, p1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "**"

    iget-object v1, p2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    :cond_2
    const-string v0, "**"

    iget-object v1, p1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    iget-object v1, p2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$3;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/LockscreenNotificationApplist$3;->compare(Lcom/android/settings/LockscreenNotificationApplist$AppRow;Lcom/android/settings/LockscreenNotificationApplist$AppRow;)I

    move-result v0

    return v0
.end method
