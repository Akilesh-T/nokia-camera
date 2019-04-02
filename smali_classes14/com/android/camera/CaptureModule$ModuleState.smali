.class final enum Lcom/android/camera/CaptureModule$ModuleState;
.super Ljava/lang/Enum;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModuleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/CaptureModule$ModuleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/CaptureModule$ModuleState;

.field public static final enum IDLE:Lcom/android/camera/CaptureModule$ModuleState;

.field public static final enum UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/CaptureModule$ModuleState;

.field public static final enum WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/CaptureModule$ModuleState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    new-instance v0, Lcom/android/camera/CaptureModule$ModuleState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CaptureModule$ModuleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CaptureModule$ModuleState;->IDLE:Lcom/android/camera/CaptureModule$ModuleState;

    .line 569
    new-instance v0, Lcom/android/camera/CaptureModule$ModuleState;

    const-string v1, "WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/CaptureModule$ModuleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CaptureModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/CaptureModule$ModuleState;

    .line 570
    new-instance v0, Lcom/android/camera/CaptureModule$ModuleState;

    const-string v1, "UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/CaptureModule$ModuleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CaptureModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/CaptureModule$ModuleState;

    .line 567
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/CaptureModule$ModuleState;

    sget-object v1, Lcom/android/camera/CaptureModule$ModuleState;->IDLE:Lcom/android/camera/CaptureModule$ModuleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/CaptureModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/CaptureModule$ModuleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/CaptureModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/CaptureModule$ModuleState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/CaptureModule$ModuleState;->$VALUES:[Lcom/android/camera/CaptureModule$ModuleState;

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
    .line 567
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/CaptureModule$ModuleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 567
    const-class v0, Lcom/android/camera/CaptureModule$ModuleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CaptureModule$ModuleState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/CaptureModule$ModuleState;
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/android/camera/CaptureModule$ModuleState;->$VALUES:[Lcom/android/camera/CaptureModule$ModuleState;

    invoke-virtual {v0}, [Lcom/android/camera/CaptureModule$ModuleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/CaptureModule$ModuleState;

    return-object v0
.end method
