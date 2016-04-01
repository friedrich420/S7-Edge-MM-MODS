.class Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;
.super Landroid/content/BroadcastReceiver;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;


# direct methods
.method constructor <init>(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    return-void
.end method

.method static access$0(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;)Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 112
    move-object v5, v3

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->access$1000007(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V

    .line 114
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->access$1000011(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    move-object v5, v3

    const-string v6, "com.thanhfhuongf.networkspeedindicator.changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-static {}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->access$L1000000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SettingsChanged"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 117
    move-object v5, v2

    const-string v6, "force_unit"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "force_unit"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefForceUnit:I

    .line 120
    :cond_2
    move-object v5, v2

    const-string v6, "show_upload_speed"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "show_upload_speed"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefShowUploadSpeed:Z

    .line 123
    :cond_3
    move-object v5, v2

    const-string v6, "show_download_speed"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 124
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "show_download_speed"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefShowDownloadSpeed:Z

    .line 126
    :cond_4
    move-object v5, v2

    const-string v6, "hide_unit"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 127
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "hide_unit"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideUnit:Z

    .line 129
    :cond_5
    move-object v5, v2

    const-string v6, "hide_inactive"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 130
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "hide_inactive"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideInactive:Z

    .line 132
    :cond_6
    move-object v5, v2

    const-string v6, "hide_inactive"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 133
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "hide_inactive"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideInactive:Z

    .line 135
    :cond_7
    move-object v5, v2

    const-string v6, "font_size"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 136
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "font_size"

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefFontSize:I

    .line 138
    :cond_8
    move-object v5, v2

    const-string v6, "position"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "position"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefPosition:I

    .line 140
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-virtual {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->refreshPosition()V

    .line 142
    :cond_9
    move-object v5, v2

    const-string v6, "suffix"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 143
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "suffix"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefSuffix:I

    .line 145
    :cond_a
    move-object v5, v2

    const-string v6, "network_type"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 146
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "network_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefNetworkType:Ljava/lang/String;

    .line 148
    :cond_b
    move-object v5, v2

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 149
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "display"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefDisplay:I

    .line 152
    :cond_c
    move-object v5, v2

    const-string v6, "update_interval"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 153
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "update_interval"

    const/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefUpdateInterval:I

    .line 155
    :cond_d
    move-object v5, v2

    const-string v6, "color_mode"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 156
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "color_mode"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefColorMode:I

    .line 158
    :cond_e
    move-object v5, v2

    const-string v6, "color"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 159
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v2

    const-string v7, "color"

    const v8, -0x333334

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefColor:I

    .line 161
    :cond_f
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->access$1000011(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V

    goto/16 :goto_0
.end method
