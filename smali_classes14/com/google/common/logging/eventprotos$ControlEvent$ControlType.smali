.class public Lcom/google/common/logging/eventprotos$ControlEvent$ControlType;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$ControlEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlType"
.end annotation


# static fields
.field public static final MENU_FULL_FROM_HIDDEN:I = 0x2710

.field public static final MENU_FULL_FROM_SCROLL:I = 0x2710

.field public static final MENU_SCROLL_FROM_SHIMMY:I = 0x2710

.field public static final OVERALL_SETTINGS:I = 0x2710

.field public static final TAP_TO_FOCUS:I = 0x2710


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$ControlEvent;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$ControlEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$ControlEvent;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$ControlEvent$ControlType;->this$1:Lcom/google/common/logging/eventprotos$ControlEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
