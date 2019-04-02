.class final enum Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;
.super Ljava/lang/Enum;
.source "PanoramaPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PanoPreviewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

.field public static final enum IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

.field public static final enum RUNNING:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

.field public static final enum WAIT_FOR_FIRST_PREVIEW:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    .line 34
    new-instance v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    const-string v1, "WAIT_FOR_FIRST_PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->WAIT_FOR_FIRST_PREVIEW:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    .line 35
    new-instance v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->RUNNING:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->WAIT_FOR_FIRST_PREVIEW:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->RUNNING:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->$VALUES:[Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->$VALUES:[Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-virtual {v0}, [Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    return-object v0
.end method
