.class Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$100(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    sget-object v2, Lcom/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z
    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    .line 127
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    sget-object v1, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$300(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    goto :goto_1

    .line 130
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z
    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    goto :goto_0
.end method
