.class public final enum Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;
.super Ljava/lang/Enum;
.source "FocusRingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/focus/FocusRingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field public static final enum STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field public static final enum STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field public static final enum STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field public static final enum STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field public static final enum STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field public static final enum STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    const-string v1, "STATE_INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 41
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    const-string v1, "STATE_ENTER"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 42
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    const-string v1, "STATE_ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 43
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    const-string v1, "STATE_ACTIVE_HOLD"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 44
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    const-string v1, "STATE_FADE_OUT"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 45
    new-instance v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    const-string v1, "STATE_HARD_STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->$VALUES:[Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->$VALUES:[Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    invoke-virtual {v0}, [Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    return-object v0
.end method
