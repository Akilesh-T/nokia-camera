.class Lcom/android/camera/app/FirstRunDialog$3;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FirstRunDialog;->promptUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/FirstRunDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/app/FirstRunDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$3;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 338
    if-eqz p2, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$3;->this$0:Lcom/android/camera/app/FirstRunDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/FirstRunDialog;->access$702(Lcom/android/camera/app/FirstRunDialog;Z)Z

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$3;->this$0:Lcom/android/camera/app/FirstRunDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/app/FirstRunDialog;->access$702(Lcom/android/camera/app/FirstRunDialog;Z)Z

    goto :goto_0
.end method
