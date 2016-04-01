.class public Lcom/android/internal/app/DumpHeapActivity;
.super Landroid/app/Activity;
.source "DumpHeapActivity.java"


# static fields
.field public static final ACTION_DELETE_DUMPHEAP:Ljava/lang/String; = "com.android.server.am.DELETE_DUMPHEAP"

.field public static final EXTRA_DELAY_DELETE:Ljava/lang/String; = "delay_delete"

.field public static final JAVA_URI:Landroid/net/Uri;

.field public static final KEY_DIRECT_LAUNCH:Ljava/lang/String; = "direct_launch"

.field public static final KEY_PROCESS:Ljava/lang/String; = "process"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mHandled:Z

.field mProcess:Ljava/lang/String;

.field mSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "content://com.android.server.heapdump/java"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, JAVA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, mHandled:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "process"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mProcess:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "size"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, mSize:J

    .line 63
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "direct_launch"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "directLaunch":Ljava/lang/String;
    if-eqz v2, :cond_8f

    .line 65
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.app.action.REPORT_HEAP_LIMIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "Heap Dump"

    sget-object v7, JAVA_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 68
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 69
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v5, "android.intent.extra.STREAM"

    sget-object v6, JAVA_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    :try_start_5b
    invoke-virtual {p0, v4}, startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, scheduleDelete()V

    .line 75
    const/4 v5, 0x1

    iput-boolean v5, p0, mHandled:Z

    .line 76
    invoke-virtual {p0}, finish()V
    :try_end_67
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5b .. :try_end_67} :catch_68

    .line 114
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_67
    return-void

    .line 78
    .restart local v1    # "clip":Landroid/content/ClipData;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_68
    move-exception v3

    .line 79
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "DumpHeapActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to direct launch to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v5, 0x103023a

    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v5, 0x1040392

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 87
    const v5, 0x1040393

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, mProcess:Ljava/lang/String;

    aput-object v7, v6, v11

    iget-wide v8, p0, mSize:J

    const/4 v7, 0x0

    invoke-static {v8, v9, v7}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 89
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/internal/app/DumpHeapActivity$1;

    invoke-direct {v6, p0}, Lcom/android/internal/app/DumpHeapActivity$1;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v5, 0x104000a

    new-instance v6, Lcom/android/internal/app/DumpHeapActivity$2;

    invoke-direct {v6, p0}, Lcom/android/internal/app/DumpHeapActivity$2;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, mDialog:Landroid/app/AlertDialog;

    goto :goto_67
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    iget-object v0, p0, mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 125
    invoke-virtual {p0}, isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_17

    .line 126
    iget-boolean v0, p0, mHandled:Z

    if-nez v0, :cond_17

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, sendBroadcast(Landroid/content/Intent;)V

    .line 130
    :cond_17
    return-void
.end method

.method scheduleDelete()V
    .registers 4

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "delay_delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
