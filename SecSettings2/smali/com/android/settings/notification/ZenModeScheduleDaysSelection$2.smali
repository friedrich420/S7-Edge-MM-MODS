.class Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;
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

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$000(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$100(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # invokes: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$200(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # setter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z
    invoke-static {v0, v3}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # invokes: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$200(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$300(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # setter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z
    invoke-static {v0, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->access$300(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
