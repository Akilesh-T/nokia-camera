.class Lcom/android/camera/ButtonManager$19;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ButtonManager;->initializeSuperResolutionButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ButtonManager;

.field final synthetic val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/camera/ButtonManager$19;->this$0:Lcom/android/camera/ButtonManager;

    iput-object p2, p0, Lcom/android/camera/ButtonManager$19;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/camera/ButtonManager$19;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/camera/ButtonManager$19;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-interface {v0}, Lcom/android/camera/ButtonManager$ButtonCallback;->onClick()V

    .line 1450
    :cond_0
    return-void
.end method
