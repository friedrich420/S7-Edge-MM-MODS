.class Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;
.super Landroid/database/ContentObserver;
.source "aokpram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/panic/xperience/aokpram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "MyExternalPreferencesObserver"
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field private final this$0:Lin/panic/xperience/aokpram;


# direct methods
.method public constructor <init>(Lin/panic/xperience/aokpram;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->this$0:Lin/panic/xperience/aokpram;

    .line 150
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static access$0(Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;)Lin/panic/xperience/aokpram;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->this$0:Lin/panic/xperience/aokpram;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public observe()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->this$0:Lin/panic/xperience/aokpram;

    invoke-virtual {v2}, Lin/panic/xperience/aokpram;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->this$0:Lin/panic/xperience/aokpram;

    move-object v4, v0

    iget-object v4, v4, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lin/panic/xperience/aokpram;->externalPreferencesObserverCallback(Landroid/net/Uri;)V

    return-void
.end method

.method public unObserve()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "unused"
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->this$0:Lin/panic/xperience/aokpram;

    invoke-virtual {v2}, Lin/panic/xperience/aokpram;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
