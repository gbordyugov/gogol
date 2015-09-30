{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Subscriptions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new subscription.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorSubscriptionsInsert@.
module Mirror.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertAPI

    -- * Creating a Request
    , subscriptionsInsert
    , SubscriptionsInsert

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIp
    , siKey
    , siOauthToken
    , siFields
    , siAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorSubscriptionsInsert@ which the
-- 'SubscriptionsInsert' request conforms to.
type SubscriptionsInsertAPI =
     "subscriptions" :> Post '[JSON] Subscription

-- | Creates a new subscription.
--
-- /See:/ 'subscriptionsInsert' smart constructor.
data SubscriptionsInsert = SubscriptionsInsert
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIp      :: !(Maybe Text)
    , _siKey         :: !(Maybe Text)
    , _siOauthToken  :: !(Maybe Text)
    , _siFields      :: !(Maybe Text)
    , _siAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIp'
--
-- * 'siKey'
--
-- * 'siOauthToken'
--
-- * 'siFields'
--
-- * 'siAlt'
subscriptionsInsert
    :: SubscriptionsInsert
subscriptionsInsert =
    SubscriptionsInsert
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIp = Nothing
    , _siKey = Nothing
    , _siOauthToken = Nothing
    , _siFields = Nothing
    , _siAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SubscriptionsInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SubscriptionsInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIp :: Lens' SubscriptionsInsert' (Maybe Text)
siUserIp = lens _siUserIp (\ s a -> s{_siUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SubscriptionsInsert' (Maybe Text)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOauthToken :: Lens' SubscriptionsInsert' (Maybe Text)
siOauthToken
  = lens _siOauthToken (\ s a -> s{_siOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SubscriptionsInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

-- | Data format for the response.
siAlt :: Lens' SubscriptionsInsert' Text
siAlt = lens _siAlt (\ s a -> s{_siAlt = a})

instance GoogleRequest SubscriptionsInsert' where
        type Rs SubscriptionsInsert' = Subscription
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u SubscriptionsInsert{..}
          = go _siQuotaUser _siPrettyPrint _siUserIp _siKey
              _siOauthToken
              _siFields
              _siAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsInsertAPI)
                      r
                      u