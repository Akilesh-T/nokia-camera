.class Lcom/android/camera/PermissionsActivity$2;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PermissionsActivity;->showTipsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PermissionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$2;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$2;->this$0:Lcom/android/camera/PermissionsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/PermissionsActivity;->access$102(Lcom/android/camera/PermissionsActivity;Z)Z

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$2;->this$0:Lcom/android/camera/PermissionsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PermissionsActivity;->access$102(Lcom/android/camera/PermissionsActivity;Z)Z

    goto :goto_0
.end method
