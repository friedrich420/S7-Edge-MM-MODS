.class Lcom/absolute/android/persistservice/z;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/y;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 412
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/y;

    .line 413
    const/16 v0, 0x6c4

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 414
    iput-object p2, p0, b:Ljava/lang/String;

    .line 415
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 423
    if-nez p2, :cond_c

    iget-object v0, p0, b:Ljava/lang/String;

    .line 428
    :goto_4
    const v1, 0xffff

    and-int/2addr v1, p1

    sparse-switch v1, :sswitch_data_2e

    .line 440
    :goto_b
    return-void

    .line 423
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 430
    :sswitch_20
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/y;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    goto :goto_b

    .line 437
    :sswitch_26
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/y;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;Z)V

    goto :goto_b

    .line 428
    nop

    :sswitch_data_2e
    .sparse-switch
        0x4 -> :sswitch_20
        0x40 -> :sswitch_26
        0x80 -> :sswitch_26
        0x200 -> :sswitch_26
        0x400 -> :sswitch_26
    .end sparse-switch
.end method
