.class public final enum Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
.super Ljava/lang/Enum;
.source "PreviewTransitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewTransitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/PreviewTransitionView$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

.field public static final enum HORIZONTAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

.field public static final enum HORIZONTAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

.field public static final enum STATIC_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

.field public static final enum VERTICAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

.field public static final enum VERTICAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    const-string v1, "STATIC_BLUR"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->STATIC_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 54
    new-instance v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    const-string v1, "HORIZONTAL_CW_FLIP_BLUR"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->HORIZONTAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 55
    new-instance v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    const-string v1, "HORIZONTAL_CCW_FLIP_BLUR"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->HORIZONTAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 56
    new-instance v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    const-string v1, "VERTICAL_CW_FLIP_BLUR"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->VERTICAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 57
    new-instance v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    const-string v1, "VERTICAL_CCW_FLIP_BLUR"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->VERTICAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    sget-object v1, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->STATIC_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->HORIZONTAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->HORIZONTAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->VERTICAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->VERTICAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->$VALUES:[Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromFlag(I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/ui/PreviewTransitionView$TransitionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 72
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->STATIC_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->HORIZONTAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_2
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->HORIZONTAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->VERTICAL_CW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_4
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->VERTICAL_CCW_FLIP_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->$VALUES:[Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-virtual {v0}, [Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    return-object v0
.end method
