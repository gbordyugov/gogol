{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference>
module Network.Google.Games
    (
    -- * API
      GamesAPI
    , gamesAPI
    , gamesURL

    -- * Service Methods

    -- * REST Resources

    -- ** GamesAchievementDefinitionsList
    , module Games.AchievementDefinitions.List

    -- ** GamesAchievementsIncrement
    , module Games.Achievements.Increment

    -- ** GamesAchievementsList
    , module Games.Achievements.List

    -- ** GamesAchievementsReveal
    , module Games.Achievements.Reveal

    -- ** GamesAchievementsSetStepsAtLeast
    , module Games.Achievements.SetStepsAtLeast

    -- ** GamesAchievementsUnlock
    , module Games.Achievements.Unlock

    -- ** GamesAchievementsUpdateMultiple
    , module Games.Achievements.UpdateMultiple

    -- ** GamesApplicationsGet
    , module Games.Applications.Get

    -- ** GamesApplicationsPlayed
    , module Games.Applications.Played

    -- ** GamesEventsListByPlayer
    , module Games.Events.ListByPlayer

    -- ** GamesEventsListDefinitions
    , module Games.Events.ListDefinitions

    -- ** GamesEventsRecord
    , module Games.Events.Record

    -- ** GamesLeaderboardsGet
    , module Games.Leaderboards.Get

    -- ** GamesLeaderboardsList
    , module Games.Leaderboards.List

    -- ** GamesMetagameGetMetagameConfig
    , module Games.Metagame.GetMetagameConfig

    -- ** GamesMetagameListCategoriesByPlayer
    , module Games.Metagame.ListCategoriesByPlayer

    -- ** GamesPlayersGet
    , module Games.Players.Get

    -- ** GamesPlayersList
    , module Games.Players.List

    -- ** GamesPushtokensRemove
    , module Games.Pushtokens.Remove

    -- ** GamesPushtokensUpdate
    , module Games.Pushtokens.Update

    -- ** GamesQuestMilestonesClaim
    , module Games.QuestMilestones.Claim

    -- ** GamesQuestsAccept
    , module Games.Quests.Accept

    -- ** GamesQuestsList
    , module Games.Quests.List

    -- ** GamesRevisionsCheck
    , module Games.Revisions.Check

    -- ** GamesRoomsCreate
    , module Games.Rooms.Create

    -- ** GamesRoomsDecline
    , module Games.Rooms.Decline

    -- ** GamesRoomsDismiss
    , module Games.Rooms.Dismiss

    -- ** GamesRoomsGet
    , module Games.Rooms.Get

    -- ** GamesRoomsJoin
    , module Games.Rooms.Join

    -- ** GamesRoomsLeave
    , module Games.Rooms.Leave

    -- ** GamesRoomsList
    , module Games.Rooms.List

    -- ** GamesRoomsReportStatus
    , module Games.Rooms.ReportStatus

    -- ** GamesScoresGet
    , module Games.Scores.Get

    -- ** GamesScoresList
    , module Games.Scores.List

    -- ** GamesScoresListWindow
    , module Games.Scores.ListWindow

    -- ** GamesScoresSubmit
    , module Games.Scores.Submit

    -- ** GamesScoresSubmitMultiple
    , module Games.Scores.SubmitMultiple

    -- ** GamesSnapshotsGet
    , module Games.Snapshots.Get

    -- ** GamesSnapshotsList
    , module Games.Snapshots.List

    -- ** GamesTurnBasedMatchesCancel
    , module Games.TurnBasedMatches.Cancel

    -- ** GamesTurnBasedMatchesCreate
    , module Games.TurnBasedMatches.Create

    -- ** GamesTurnBasedMatchesDecline
    , module Games.TurnBasedMatches.Decline

    -- ** GamesTurnBasedMatchesDismiss
    , module Games.TurnBasedMatches.Dismiss

    -- ** GamesTurnBasedMatchesFinish
    , module Games.TurnBasedMatches.Finish

    -- ** GamesTurnBasedMatchesGet
    , module Games.TurnBasedMatches.Get

    -- ** GamesTurnBasedMatchesJoin
    , module Games.TurnBasedMatches.Join

    -- ** GamesTurnBasedMatchesLeave
    , module Games.TurnBasedMatches.Leave

    -- ** GamesTurnBasedMatchesLeaveTurn
    , module Games.TurnBasedMatches.LeaveTurn

    -- ** GamesTurnBasedMatchesList
    , module Games.TurnBasedMatches.List

    -- ** GamesTurnBasedMatchesRematch
    , module Games.TurnBasedMatches.Rematch

    -- ** GamesTurnBasedMatchesSync
    , module Games.TurnBasedMatches.Sync

    -- ** GamesTurnBasedMatchesTakeTurn
    , module Games.TurnBasedMatches.TakeTurn

    -- * Types

    -- ** RoomJoinRequest
    , RoomJoinRequest
    , roomJoinRequest
    , rjrNetworkDiagnostics
    , rjrKind
    , rjrClientAddress
    , rjrCapabilities

    -- ** Snapshot
    , Snapshot
    , snapshot
    , sLastModifiedMillis
    , sKind
    , sProgressValue
    , sUniqueName
    , sCoverImage
    , sId
    , sDurationMillis
    , sTitle
    , sType
    , sDescription
    , sDriveId

    -- ** TurnBasedMatchData
    , TurnBasedMatchData
    , turnBasedMatchData
    , tbmdKind
    , tbmdData
    , tbmdDataAvailable

    -- ** TurnBasedMatch
    , TurnBasedMatch
    , turnBasedMatch
    , tbmStatus
    , tbmVariant
    , tbmResults
    , tbmMatchNumber
    , tbmKind
    , tbmData
    , tbmWithParticipantId
    , tbmCreationDetails
    , tbmInviterId
    , tbmLastUpdateDetails
    , tbmParticipants
    , tbmApplicationId
    , tbmAutoMatchingCriteria
    , tbmPreviousMatchData
    , tbmPendingParticipantId
    , tbmUserMatchStatus
    , tbmMatchId
    , tbmDescription
    , tbmRematchId
    , tbmMatchVersion

    -- ** PlayerEvent
    , PlayerEvent
    , playerEvent
    , peKind
    , peNumEvents
    , peFormattedNumEvents
    , peDefinitionId
    , pePlayerId

    -- ** Room
    , Room
    , room
    , rStatus
    , rVariant
    , rKind
    , rAutoMatchingStatus
    , rCreationDetails
    , rInviterId
    , rLastUpdateDetails
    , rRoomStatusVersion
    , rParticipants
    , rApplicationId
    , rAutoMatchingCriteria
    , rRoomId
    , rDescription

    -- ** QuestListResponse
    , QuestListResponse
    , questListResponse
    , qlrNextPageToken
    , qlrKind
    , qlrItems

    -- ** Application
    , Application
    , application
    , aThemeColor
    , aLeaderboardCount
    , aKind
    , aCategory
    , aName
    , aEnabledFeatures
    , aInstances
    , aAuthor
    , aId
    , aAchievementCount
    , aAssets
    , aDescription
    , aLastUpdatedTimestamp

    -- ** TurnBasedMatchTurn
    , TurnBasedMatchTurn
    , turnBasedMatchTurn
    , tbmtResults
    , tbmtKind
    , tbmtData
    , tbmtPendingParticipantId
    , tbmtMatchVersion

    -- ** ApplicationCategory
    , ApplicationCategory
    , applicationCategory
    , acSecondary
    , acKind
    , acPrimary

    -- ** PlayerScoreListResponse
    , PlayerScoreListResponse
    , playerScoreListResponse
    , pslrSubmittedScores
    , pslrKind

    -- ** NetworkDiagnostics
    , NetworkDiagnostics
    , networkDiagnostics
    , ndAndroidNetworkType
    , ndKind
    , ndNetworkOperatorCode
    , ndNetworkOperatorName
    , ndRegistrationLatencyMillis
    , ndIosNetworkType
    , ndAndroidNetworkSubtype

    -- ** PlayerLeaderboardScore
    , PlayerLeaderboardScore
    , playerLeaderboardScore
    , plsScoreTag
    , plsScoreString
    , plsKind
    , plsScoreValue
    , plsTimeSpan
    , plsPublicRank
    , plsSocialRank
    , plsLeaderboardId
    , plsWriteTimestamp

    -- ** QuestCriterion
    , QuestCriterion
    , questCriterion
    , qcCurrentContribution
    , qcCompletionContribution
    , qcKind
    , qcInitialPlayerProgress
    , qcEventId

    -- ** AchievementUpdateResponse
    , AchievementUpdateResponse
    , achievementUpdateResponse
    , aurUpdateOccurred
    , aurAchievementId
    , aurKind
    , aurCurrentState
    , aurNewlyUnlocked
    , aurCurrentSteps

    -- ** SnapshotListResponse
    , SnapshotListResponse
    , snapshotListResponse
    , slrNextPageToken
    , slrKind
    , slrItems

    -- ** PushToken
    , PushToken
    , pushToken
    , ptClientRevision
    , ptKind
    , ptLanguage
    , ptId

    -- ** TurnBasedMatchList
    , TurnBasedMatchList
    , turnBasedMatchList
    , tbmlNextPageToken
    , tbmlKind
    , tbmlItems

    -- ** PlayerLevel
    , PlayerLevel
    , playerLevel
    , plMaxExperiencePoints
    , plKind
    , plMinExperiencePoints
    , plLevel

    -- ** RoomList
    , RoomList
    , roomList
    , rlNextPageToken
    , rlKind
    , rlItems

    -- ** PeerChannelDiagnostics
    , PeerChannelDiagnostics
    , peerChannelDiagnostics
    , pcdNumMessagesLost
    , pcdBytesSent
    , pcdKind
    , pcdRoundtripLatencyMillis
    , pcdBytesReceived
    , pcdNumMessagesReceived
    , pcdNumSendFailures
    , pcdNumMessagesSent

    -- ** LeaderboardEntry
    , LeaderboardEntry
    , leaderboardEntry
    , leScoreTag
    , leWriteTimestampMillis
    , leKind
    , leScoreValue
    , leFormattedScore
    , leTimeSpan
    , leFormattedScoreRank
    , lePlayer
    , leScoreRank

    -- ** AchievementUpdateMultipleResponse
    , AchievementUpdateMultipleResponse
    , achievementUpdateMultipleResponse
    , aumrKind
    , aumrUpdatedAchievements

    -- ** PlayerScoreResponse
    , PlayerScoreResponse
    , playerScoreResponse
    , psrScoreTag
    , psrKind
    , psrFormattedScore
    , psrLeaderboardId
    , psrBeatenScoreTimeSpans
    , psrUnbeatenScores

    -- ** TurnBasedMatchParticipant
    , TurnBasedMatchParticipant
    , turnBasedMatchParticipant
    , tbmpStatus
    , tbmpKind
    , tbmpId
    , tbmpAutoMatched
    , tbmpPlayer
    , tbmpAutoMatchedPlayer

    -- ** RoomClientAddress
    , RoomClientAddress
    , roomClientAddress
    , rcaKind
    , rcaXmppAddress

    -- ** InstanceAndroidDetails
    , InstanceAndroidDetails
    , instanceAndroidDetails
    , iadPackageName
    , iadPreferred
    , iadKind
    , iadEnablePiracyCheck

    -- ** LeaderboardListResponse
    , LeaderboardListResponse
    , leaderboardListResponse
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** Category
    , Category
    , category
    , cKind
    , cCategory
    , cExperiencePoints

    -- ** EventDefinitionListResponse
    , EventDefinitionListResponse
    , eventDefinitionListResponse
    , edlrNextPageToken
    , edlrKind
    , edlrItems

    -- ** RoomParticipant
    , RoomParticipant
    , roomParticipant
    , rpStatus
    , rpConnected
    , rpLeaveReason
    , rpKind
    , rpClientAddress
    , rpId
    , rpAutoMatched
    , rpPlayer
    , rpCapabilities
    , rpAutoMatchedPlayer

    -- ** AnonymousPlayer
    , AnonymousPlayer
    , anonymousPlayer
    , apAvatarImageUrl
    , apKind
    , apDisplayName

    -- ** AchievementDefinitionsListResponse
    , AchievementDefinitionsListResponse
    , achievementDefinitionsListResponse
    , adlrNextPageToken
    , adlrKind
    , adlrItems

    -- ** QuestContribution
    , QuestContribution
    , questContribution
    , qKind
    , qValue
    , qFormattedValue

    -- ** PlayerLeaderboardScoreListResponse
    , PlayerLeaderboardScoreListResponse
    , playerLeaderboardScoreListResponse
    , plslrNextPageToken
    , plslrKind
    , plslrItems
    , plslrPlayer

    -- ** SnapshotImage
    , SnapshotImage
    , snapshotImage
    , siHeight
    , siKind
    , siUrl
    , siMimeType
    , siWidth

    -- ** RoomStatus
    , RoomStatus
    , roomStatus
    , rsStatus
    , rsKind
    , rsAutoMatchingStatus
    , rsStatusVersion
    , rsParticipants
    , rsRoomId

    -- ** TurnBasedAutoMatchingCriteria
    , TurnBasedAutoMatchingCriteria
    , turnBasedAutoMatchingCriteria
    , tbamcKind
    , tbamcExclusiveBitmask
    , tbamcMaxAutoMatchingPlayers
    , tbamcMinAutoMatchingPlayers

    -- ** PlayerScore
    , PlayerScore
    , playerScore
    , psScoreTag
    , psScore
    , psKind
    , psFormattedScore
    , psTimeSpan

    -- ** InstanceIosDetails
    , InstanceIosDetails
    , instanceIosDetails
    , iidItunesAppId
    , iidPreferredForIpad
    , iidSupportIphone
    , iidKind
    , iidSupportIpad
    , iidPreferredForIphone
    , iidBundleIdentifier

    -- ** EventUpdateResponse
    , EventUpdateResponse
    , eventUpdateResponse
    , eurPlayerEvents
    , eurBatchFailures
    , eurEventFailures
    , eurKind

    -- ** RevisionCheckResponse
    , RevisionCheckResponse
    , revisionCheckResponse
    , rcrApiVersion
    , rcrKind
    , rcrRevisionStatus

    -- ** ParticipantResult
    , ParticipantResult
    , participantResult
    , prParticipantId
    , prKind
    , prResult
    , prPlacing

    -- ** CategoryListResponse
    , CategoryListResponse
    , categoryListResponse
    , clrNextPageToken
    , clrKind
    , clrItems

    -- ** TurnBasedMatchModification
    , TurnBasedMatchModification
    , turnBasedMatchModification
    , tbmmParticipantId
    , tbmmKind
    , tbmmModifiedTimestampMillis

    -- ** RoomP2PStatus
    , RoomP2PStatus
    , roomP2PStatus
    , rppsStatus
    , rppsParticipantId
    , rppsKind
    , rppsError
    , rppsErrorReason
    , rppsConnectionSetupLatencyMillis
    , rppsUnreliableRoundtripLatencyMillis

    -- ** MetagameConfig
    , MetagameConfig
    , metagameConfig
    , mcKind
    , mcCurrentVersion
    , mcPlayerLevels

    -- ** Leaderboard
    , Leaderboard
    , leaderboard
    , lKind
    , lIsIconUrlDefault
    , lName
    , lId
    , lIconUrl
    , lOrder

    -- ** EventDefinition
    , EventDefinition
    , eventDefinition
    , edIsDefaultImageUrl
    , edKind
    , edVisibility
    , edImageUrl
    , edDisplayName
    , edId
    , edChildEvents
    , edDescription

    -- ** RoomModification
    , RoomModification
    , roomModification
    , rmParticipantId
    , rmKind
    , rmModifiedTimestampMillis

    -- ** AchievementUnlockResponse
    , AchievementUnlockResponse
    , achievementUnlockResponse
    , achKind
    , achNewlyUnlocked

    -- ** EventUpdateRequest
    , EventUpdateRequest
    , eventUpdateRequest
    , eUpdateCount
    , eKind
    , eDefinitionId

    -- ** PlayerAchievement
    , PlayerAchievement
    , playerAchievement
    , paKind
    , paAchievementState
    , paFormattedCurrentStepsString
    , paExperiencePoints
    , paId
    , paCurrentSteps
    , paLastUpdatedTimestamp

    -- ** RoomP2PStatuses
    , RoomP2PStatuses
    , roomP2PStatuses
    , rppssKind
    , rppssUpdates

    -- ** AchievementUpdateRequest
    , AchievementUpdateRequest
    , achievementUpdateRequest
    , auruAchievementId
    , auruKind
    , auruUpdateType
    , auruSetStepsAtLeastPayload
    , auruIncrementPayload

    -- ** ImageAsset
    , ImageAsset
    , imageAsset
    , iaHeight
    , iaKind
    , iaUrl
    , iaWidth
    , iaName

    -- ** LeaderboardScoreRank
    , LeaderboardScoreRank
    , leaderboardScoreRank
    , lsrNumScores
    , lsrKind
    , lsrFormattedRank
    , lsrFormattedNumScores
    , lsrRank

    -- ** AchievementUpdateMultipleRequest
    , AchievementUpdateMultipleRequest
    , achievementUpdateMultipleRequest
    , aumruKind
    , aumruUpdates

    -- ** RoomAutoMatchStatus
    , RoomAutoMatchStatus
    , roomAutoMatchStatus
    , ramsKind
    , ramsWaitEstimateSeconds

    -- ** RoomCreateRequest
    , RoomCreateRequest
    , roomCreateRequest
    , rooRequestId
    , rooVariant
    , rooNetworkDiagnostics
    , rooKind
    , rooInvitedPlayerIds
    , rooClientAddress
    , rooAutoMatchingCriteria
    , rooCapabilities

    -- ** LeaderboardScores
    , LeaderboardScores
    , leaderboardScores
    , lsNextPageToken
    , lsNumScores
    , lsKind
    , lsPlayerScore
    , lsItems
    , lsPrevPageToken

    -- ** PlayerListResponse
    , PlayerListResponse
    , playerListResponse
    , plrNextPageToken
    , plrKind
    , plrItems

    -- ** TurnBasedMatchCreateRequest
    , TurnBasedMatchCreateRequest
    , turnBasedMatchCreateRequest
    , tbmcrRequestId
    , tbmcrVariant
    , tbmcrKind
    , tbmcrInvitedPlayerIds
    , tbmcrAutoMatchingCriteria

    -- ** AchievementDefinition
    , AchievementDefinition
    , achievementDefinition
    , adAchievementType
    , adFormattedTotalSteps
    , adRevealedIconUrl
    , adKind
    , adExperiencePoints
    , adInitialState
    , adName
    , adId
    , adIsUnlockedIconUrlDefault
    , adTotalSteps
    , adDescription
    , adIsRevealedIconUrlDefault
    , adUnlockedIconUrl

    -- ** PlayerAchievementListResponse
    , PlayerAchievementListResponse
    , playerAchievementListResponse
    , palrNextPageToken
    , palrKind
    , palrItems

    -- ** AchievementSetStepsAtLeastResponse
    , AchievementSetStepsAtLeastResponse
    , achievementSetStepsAtLeastResponse
    , assalrKind
    , assalrNewlyUnlocked
    , assalrCurrentSteps

    -- ** EventBatchRecordFailure
    , EventBatchRecordFailure
    , eventBatchRecordFailure
    , ebrfKind
    , ebrfRange
    , ebrfFailureCause

    -- ** TurnBasedMatchResults
    , TurnBasedMatchResults
    , turnBasedMatchResults
    , tbmrResults
    , tbmrKind
    , tbmrData
    , tbmrMatchVersion

    -- ** RoomLeaveRequest
    , RoomLeaveRequest
    , roomLeaveRequest
    , rlrKind
    , rlrReason
    , rlrLeaveDiagnostics

    -- ** AchievementIncrementResponse
    , AchievementIncrementResponse
    , achievementIncrementResponse
    , airKind
    , airNewlyUnlocked
    , airCurrentSteps

    -- ** AchievementRevealResponse
    , AchievementRevealResponse
    , achievementRevealResponse
    , arrKind
    , arrCurrentState

    -- ** Played
    , Played
    , played
    , pKind
    , pAutoMatched
    , pTimeMillis

    -- ** RoomAutoMatchingCriteria
    , RoomAutoMatchingCriteria
    , roomAutoMatchingCriteria
    , ramcKind
    , ramcExclusiveBitmask
    , ramcMaxAutoMatchingPlayers
    , ramcMinAutoMatchingPlayers

    -- ** AggregateStats
    , AggregateStats
    , aggregateStats
    , asMax
    , asKind
    , asCount
    , asMin
    , asSum

    -- ** RoomLeaveDiagnostics
    , RoomLeaveDiagnostics
    , roomLeaveDiagnostics
    , rldPeerSession
    , rldAndroidNetworkType
    , rldKind
    , rldNetworkOperatorCode
    , rldNetworkOperatorName
    , rldSocketsUsed
    , rldIosNetworkType
    , rldAndroidNetworkSubtype

    -- ** TurnBasedMatchSync
    , TurnBasedMatchSync
    , turnBasedMatchSync
    , tbmsMoreAvailable
    , tbmsNextPageToken
    , tbmsKind
    , tbmsItems

    -- ** QuestMilestone
    , QuestMilestone
    , questMilestone
    , qmState
    , qmKind
    , qmId
    , qmCompletionRewardData
    , qmCriteria

    -- ** PushTokenId
    , PushTokenId
    , pushTokenId
    , ptiIos
    , ptiKind

    -- ** EventRecordRequest
    , EventRecordRequest
    , eventRecordRequest
    , errRequestId
    , errKind
    , errCurrentTimeMillis
    , errTimePeriods

    -- ** ScoreSubmission
    , ScoreSubmission
    , scoreSubmission
    , ssSignature
    , ssScoreTag
    , ssScore
    , ssKind
    , ssLeaderboardId

    -- ** PeerSessionDiagnostics
    , PeerSessionDiagnostics
    , peerSessionDiagnostics
    , psdConnectedTimestampMillis
    , psdParticipantId
    , psdKind
    , psdUnreliableChannel
    , psdReliableChannel

    -- ** EventPeriodUpdate
    , EventPeriodUpdate
    , eventPeriodUpdate
    , epuKind
    , epuTimePeriod
    , epuUpdates

    -- ** GamesAchievementIncrement
    , GamesAchievementIncrement
    , gamesAchievementIncrement
    , gaiRequestId
    , gaiKind
    , gaiSteps

    -- ** GamesAchievementSetStepsAtLeast
    , GamesAchievementSetStepsAtLeast
    , gamesAchievementSetStepsAtLeast
    , gassalKind
    , gassalSteps

    -- ** PlayerExperienceInfo
    , PlayerExperienceInfo
    , playerExperienceInfo
    , peiKind
    , peiCurrentExperiencePoints
    , peiCurrentLevel
    , peiNextLevel
    , peiLastLevelUpTimestampMillis

    -- ** Player
    , Player
    , player
    , plaLastPlayedWith
    , plaAvatarImageUrl
    , plaKind
    , plaExperienceInfo
    , plaName
    , plaDisplayName
    , plaTitle
    , plaPlayerId

    -- ** TurnBasedMatchRematch
    , TurnBasedMatchRematch
    , turnBasedMatchRematch
    , tRematch
    , tKind
    , tPreviousMatch

    -- ** InstanceWebDetails
    , InstanceWebDetails
    , instanceWebDetails
    , iwdPreferred
    , iwdKind
    , iwdLaunchUrl

    -- ** EventChild
    , EventChild
    , eventChild
    , ecKind
    , ecChildId

    -- ** TurnBasedMatchDataRequest
    , TurnBasedMatchDataRequest
    , turnBasedMatchDataRequest
    , tbmdrKind
    , tbmdrData

    -- ** PlayerEventListResponse
    , PlayerEventListResponse
    , playerEventListResponse
    , pelrNextPageToken
    , pelrKind
    , pelrItems

    -- ** EventPeriodRange
    , EventPeriodRange
    , eventPeriodRange
    , eprKind
    , eprPeriodStartMillis
    , eprPeriodEndMillis

    -- ** Quest
    , Quest
    , quest
    , queLastUpdatedTimestampMillis
    , queBannerUrl
    , queState
    , queMilestones
    , queKind
    , queApplicationId
    , queEndTimestampMillis
    , queName
    , queId
    , queIconUrl
    , queStartTimestampMillis
    , queNotifyTimestampMillis
    , queDescription
    , queIsDefaultBannerUrl
    , queIsDefaultIconUrl
    , queAcceptedTimestampMillis

    -- ** EventRecordFailure
    , EventRecordFailure
    , eventRecordFailure
    , erfKind
    , erfFailureCause
    , erfEventId

    -- ** Instance
    , Instance
    , instance'
    , iAndroidInstance
    , iKind
    , iWebInstance
    , iIosInstance
    , iName
    , iAcquisitionUri
    , iPlatformType
    , iTurnBasedPlay
    , iRealtimePlay

    -- ** PlayerScoreSubmissionList
    , PlayerScoreSubmissionList
    , playerScoreSubmissionList
    , psslKind
    , psslScores
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Games.AchievementDefinitions.List
import           Network.Google.Resource.Games.Achievements.Increment
import           Network.Google.Resource.Games.Achievements.List
import           Network.Google.Resource.Games.Achievements.Reveal
import           Network.Google.Resource.Games.Achievements.SetStepsAtLeast
import           Network.Google.Resource.Games.Achievements.Unlock
import           Network.Google.Resource.Games.Achievements.UpdateMultiple
import           Network.Google.Resource.Games.Applications.Get
import           Network.Google.Resource.Games.Applications.Played
import           Network.Google.Resource.Games.Events.ListByPlayer
import           Network.Google.Resource.Games.Events.ListDefinitions
import           Network.Google.Resource.Games.Events.Record
import           Network.Google.Resource.Games.Leaderboards.Get
import           Network.Google.Resource.Games.Leaderboards.List
import           Network.Google.Resource.Games.Metagame.GetMetagameConfig
import           Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer
import           Network.Google.Resource.Games.Players.Get
import           Network.Google.Resource.Games.Players.List
import           Network.Google.Resource.Games.Pushtokens.Remove
import           Network.Google.Resource.Games.Pushtokens.Update
import           Network.Google.Resource.Games.QuestMilestones.Claim
import           Network.Google.Resource.Games.Quests.Accept
import           Network.Google.Resource.Games.Quests.List
import           Network.Google.Resource.Games.Revisions.Check
import           Network.Google.Resource.Games.Rooms.Create
import           Network.Google.Resource.Games.Rooms.Decline
import           Network.Google.Resource.Games.Rooms.Dismiss
import           Network.Google.Resource.Games.Rooms.Get
import           Network.Google.Resource.Games.Rooms.Join
import           Network.Google.Resource.Games.Rooms.Leave
import           Network.Google.Resource.Games.Rooms.List
import           Network.Google.Resource.Games.Rooms.ReportStatus
import           Network.Google.Resource.Games.Scores.Get
import           Network.Google.Resource.Games.Scores.List
import           Network.Google.Resource.Games.Scores.ListWindow
import           Network.Google.Resource.Games.Scores.Submit
import           Network.Google.Resource.Games.Scores.SubmitMultiple
import           Network.Google.Resource.Games.Snapshots.Get
import           Network.Google.Resource.Games.Snapshots.List
import           Network.Google.Resource.Games.TurnBasedMatches.Cancel
import           Network.Google.Resource.Games.TurnBasedMatches.Create
import           Network.Google.Resource.Games.TurnBasedMatches.Decline
import           Network.Google.Resource.Games.TurnBasedMatches.Dismiss
import           Network.Google.Resource.Games.TurnBasedMatches.Finish
import           Network.Google.Resource.Games.TurnBasedMatches.Get
import           Network.Google.Resource.Games.TurnBasedMatches.Join
import           Network.Google.Resource.Games.TurnBasedMatches.Leave
import           Network.Google.Resource.Games.TurnBasedMatches.LeaveTurn
import           Network.Google.Resource.Games.TurnBasedMatches.List
import           Network.Google.Resource.Games.TurnBasedMatches.Rematch
import           Network.Google.Resource.Games.TurnBasedMatches.Sync
import           Network.Google.Resource.Games.TurnBasedMatches.TakeTurn

{- $resources
TODO
-}

type GamesAPI =
     Rooms :<|> Leaderboards :<|> QuestMilestones :<|>
       Metagame
       :<|> AchievementDefinitions
       :<|> Achievements
       :<|> Snapshots
       :<|> Events
       :<|> Quests
       :<|> Players
       :<|> Revisions
       :<|> Scores
       :<|> Pushtokens
       :<|> TurnBasedMatches
       :<|> Applications

gamesAPI :: Proxy GamesAPI
gamesAPI = Proxy