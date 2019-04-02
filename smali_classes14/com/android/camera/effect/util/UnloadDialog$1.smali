.class Lcom/android/camera/effect/util/UnloadDialog$1;
.super Ljava/lang/Object;
.source "UnloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/util/UnloadDialog;->showDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/util/UnloadDialog;

.field final synthetic val$currentValue:Ljava/lang/String;

.field final synthetic val$effectContent:Ljava/lang/String;

.field final synthetic val$effectKey:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/camera/effect/util/UnloadDialog;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/util/UnloadDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->this$0:Lcom/android/camera/effect/util/UnloadDialog;

    iput p2, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$position:I

    iput-object p3, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$effectKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$effectContent:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$currentValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->this$0:Lcom/android/camera/effect/util/UnloadDialog;

    iget v1, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$position:I

    iget-object v2, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$effectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$effectContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/effect/util/UnloadDialog$1;->val$currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/util/UnloadDialog;->unloadImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
