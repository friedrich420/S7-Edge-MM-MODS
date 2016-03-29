.class Lcom/android/settings/notification/RadioPreference$1;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RadioPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RadioPreference;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/notification/RadioPreference$1;->this$0:Lcom/android/settings/notification/RadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/RadioPreference$1;->this$0:Lcom/android/settings/notification/RadioPreference;

    # invokes: Lcom/android/settings/notification/RadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/notification/RadioPreference;->access$000(Lcom/android/settings/notification/RadioPreference;Landroid/widget/CompoundButton;Z)V

    .line 51
    return-void
.end method
