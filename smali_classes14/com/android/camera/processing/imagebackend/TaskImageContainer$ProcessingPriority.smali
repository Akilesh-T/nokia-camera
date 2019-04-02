.class public final enum Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
.super Ljava/lang/Enum;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

.field public static final enum AVERAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

.field public static final enum FAST:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

.field public static final enum SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->FAST:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    const-string v1, "AVERAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->AVERAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->FAST:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->AVERAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->$VALUES:[Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->$VALUES:[Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    invoke-virtual {v0}, [Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    return-object v0
.end method
