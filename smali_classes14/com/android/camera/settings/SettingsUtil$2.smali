.class final Lcom/android/camera/settings/SettingsUtil$2;
.super Ljava/lang/Object;
.source "SettingsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/SettingsUtil;->getLocationAlertBuilder(Landroid/app/AlertDialog$Builder;Lcom/android/camera/util/Callback;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/camera/util/Callback;


# direct methods
.method constructor <init>(Lcom/android/camera/util/Callback;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/camera/settings/SettingsUtil$2;->val$callback:Lcom/android/camera/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/camera/settings/SettingsUtil$2;->val$callback:Lcom/android/camera/util/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 558
    return-void
.end method
